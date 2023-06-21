import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class DogProfilePageUpdateSeconddogModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DogName widget.
  TextEditingController? dogNameController;
  String? Function(BuildContext, String?)? dogNameControllerValidator;
  // State field(s) for Dogage widget.
  String? dogageValue;
  FormFieldController<String>? dogageValueController;
  // State field(s) for Dogsize widget.
  String? dogsizeValue;
  FormFieldController<String>? dogsizeValueController;
  // State field(s) for Breed widget.
  String? breedValue;
  FormFieldController<String>? breedValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    dogNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
