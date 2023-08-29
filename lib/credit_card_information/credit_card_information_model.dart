import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreditCardInformationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CardNumber widget.
  TextEditingController? cardNumberController;
  String? Function(BuildContext, String?)? cardNumberControllerValidator;
  // State field(s) for CountryRegion widget.
  TextEditingController? countryRegionController;
  String? Function(BuildContext, String?)? countryRegionControllerValidator;
  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for LastName widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for ApartmentSuite widget.
  TextEditingController? apartmentSuiteController;
  String? Function(BuildContext, String?)? apartmentSuiteControllerValidator;
  // State field(s) for city widget.
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for State widget.
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  // State field(s) for ZinpCode widget.
  TextEditingController? zinpCodeController;
  String? Function(BuildContext, String?)? zinpCodeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    cardNumberController?.dispose();
    countryRegionController?.dispose();
    nameController?.dispose();
    lastNameController?.dispose();
    addressController?.dispose();
    apartmentSuiteController?.dispose();
    cityController?.dispose();
    stateController?.dispose();
    zinpCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
