import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Dog_Profile_Page': ParameterData.none(),
  'User_Register_Page': ParameterData.none(),
  'PendingPage': ParameterData.none(),
  'Dog_Profile_Page_2': ParameterData.none(),
  'Hosting_Profile_Page': ParameterData.none(),
  'Homepage': (data) async => ParameterData(
        allParams: {
          'postRef': getParameter<DocumentReference>(data, 'postRef'),
          'postUser': getParameter<DocumentReference>(data, 'postUser'),
        },
      ),
  'Post_Creation': ParameterData.none(),
  'Dog_Profile_Page_Update': ParameterData.none(),
  'Dog_Profile_Page_2_update': ParameterData.none(),
  'ChatPage_message_each_other': (data) async => ParameterData(
        allParams: {
          'chatUser': await getDocumentParameter<UsersRecord>(
              data, 'chatUser', UsersRecord.fromSnapshot),
          'test': getParameter<DocumentReference>(data, 'test'),
          'chatRef': getParameter<DocumentReference>(data, 'chatRef'),
        },
      ),
  'Dog_Profile_Page_seconddog': ParameterData.none(),
  'Dog_Profile_Page_2_seconddog': ParameterData.none(),
  'Dog_Profile_Page_Update_seconddog': ParameterData.none(),
  'Dog_Profile_Page_2_update_seconddog': ParameterData.none(),
  'Search_Settings': ParameterData.none(),
  'CreateAccount': ParameterData.none(),
  'Login': ParameterData.none(),
  'Viewmyprofile': ParameterData.none(),
  'HomeDrawer': (data) async => ParameterData(
        allParams: {
          'offer': await getDocumentParameter<UsersRecord>(
              data, 'offer', UsersRecord.fromSnapshot),
        },
      ),
  'View_help_received': (data) async => ParameterData(
        allParams: {
          'helpOfferedbyuser':
              getParameter<DocumentReference>(data, 'helpOfferedbyuser'),
        },
      ),
  'View_otherprofileFromPost': (data) async => ParameterData(
        allParams: {
          'postUser': getParameter<DocumentReference>(data, 'postUser'),
        },
      ),
  'ReviewFromPost': (data) async => ParameterData(
        allParams: {
          'reviewTo': getParameter<DocumentReference>(data, 'reviewTo'),
        },
      ),
  'ReviewFromHelp': (data) async => ParameterData(
        allParams: {
          'reviewFromHelp':
              getParameter<DocumentReference>(data, 'reviewFromHelp'),
        },
      ),
  'HomepageMypost': (data) async => ParameterData(
        allParams: {
          'postRef': getParameter<DocumentReference>(data, 'postRef'),
          'postUser': getParameter<DocumentReference>(data, 'postUser'),
        },
      ),
  'View_otherprofileFromHelp': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
