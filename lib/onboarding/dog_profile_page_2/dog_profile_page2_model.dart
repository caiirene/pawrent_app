import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class DogProfilePage2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for housetraining widget.
  String? housetrainingValue;
  FormFieldController<String>? housetrainingValueController;
  // State field(s) for Neutered widget.
  String? neuteredValue;
  FormFieldController<String>? neuteredValueController;
  // State field(s) for Shedding widget.
  String? sheddingValue;
  FormFieldController<String>? sheddingValueController;
  // State field(s) for withcats widget.
  String? withcatsValue;
  FormFieldController<String>? withcatsValueController;
  // State field(s) for withkids widget.
  String? withkidsValue;
  FormFieldController<String>? withkidsValueController;
  // State field(s) for Seperationanxiety widget.
  String? seperationanxietyValue;
  FormFieldController<String>? seperationanxietyValueController;
  // State field(s) for Dogbio widget.
  TextEditingController? dogbioController;
  String? Function(BuildContext, String?)? dogbioControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    dogbioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
