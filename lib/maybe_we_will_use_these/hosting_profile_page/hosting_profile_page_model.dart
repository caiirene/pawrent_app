import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HostingProfilePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for housetraining widget.
  String? housetrainingValue;
  FormFieldController<String>? housetrainingValueController;
  // State field(s) for Shedding widget.
  String? sheddingValue;
  FormFieldController<String>? sheddingValueController;
  // State field(s) for withcats widget.
  String? withcatsValue;
  FormFieldController<String>? withcatsValueController;
  // State field(s) for withkids widget.
  String? withkidsValue;
  FormFieldController<String>? withkidsValueController;
  // State field(s) for thingstoadd widget.
  TextEditingController? thingstoaddController;
  String? Function(BuildContext, String?)? thingstoaddControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    thingstoaddController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
