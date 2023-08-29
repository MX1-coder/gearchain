import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/alert01_widget.dart';
import '/components/alert02_widget.dart';
import '/components/alert03_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingUserAddStaffModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Firstname widget.
  TextEditingController? firstnameController;
  String? Function(BuildContext, String?)? firstnameControllerValidator;
  // State field(s) for Lastname widget.
  TextEditingController? lastnameController;
  String? Function(BuildContext, String?)? lastnameControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for ConfirmPassword widget.
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;
  // State field(s) for Admin widget.
  bool? adminValue;
  // State field(s) for report2 widget.
  bool? report2Value;
  // State field(s) for Product widget.
  bool? productValue;
  // Stores action output result for [Backend Call - API (sendEmail)] action in Button widget.
  ApiCallResponse? apiresponse;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmPasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    firstnameController?.dispose();
    lastnameController?.dispose();
    emailController?.dispose();
    passwordController?.dispose();
    confirmPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
