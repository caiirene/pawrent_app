import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class UserRegisterPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstName widget.
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  String? _firstNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LastName widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  String? _lastNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Phonenumber widget.
  TextEditingController? phonenumberController;
  String? Function(BuildContext, String?)? phonenumberControllerValidator;
  String? _phonenumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Zip_code widget.
  TextEditingController? zipCodeController;
  String? Function(BuildContext, String?)? zipCodeControllerValidator;
  String? _zipCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'Please enter your zip code ';
    }
    if (val.length > 5) {
      return 'Please enter your zip code ';
    }

    return null;
  }

  // State field(s) for Referral_Code widget.
  TextEditingController? referralCodeController;
  String? Function(BuildContext, String?)? referralCodeControllerValidator;
  String? _referralCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Please enter your referral code ';
    }
    if (val.length > 20) {
      return 'Please enter your referral code ';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstNameControllerValidator = _firstNameControllerValidator;
    lastNameControllerValidator = _lastNameControllerValidator;
    phonenumberControllerValidator = _phonenumberControllerValidator;
    zipCodeControllerValidator = _zipCodeControllerValidator;
    referralCodeControllerValidator = _referralCodeControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    firstNameController?.dispose();
    lastNameController?.dispose();
    phonenumberController?.dispose();
    zipCodeController?.dispose();
    referralCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
