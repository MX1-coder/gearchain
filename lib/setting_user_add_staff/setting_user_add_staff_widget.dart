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
import 'setting_user_add_staff_model.dart';
export 'setting_user_add_staff_model.dart';

class SettingUserAddStaffWidget extends StatefulWidget {
  const SettingUserAddStaffWidget({
    Key? key,
    required this.adminuser,
    required this.adminuseremail,
    required this.adminuserId,
  }) : super(key: key);

  final DocumentReference? adminuser;
  final String? adminuseremail;
  final String? adminuserId;

  @override
  _SettingUserAddStaffWidgetState createState() =>
      _SettingUserAddStaffWidgetState();
}

class _SettingUserAddStaffWidgetState extends State<SettingUserAddStaffWidget> {
  late SettingUserAddStaffModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingUserAddStaffModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().permitioform = [];
      });
    });

    _model.firstnameController ??= TextEditingController();
    _model.lastnameController ??= TextEditingController();
    _model.emailController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    _model.confirmPasswordController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          top: true,
          child: StreamBuilder<List<NotificationRecord>>(
            stream: queryNotificationRecord(
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).customColor3,
                      ),
                    ),
                  ),
                );
              }
              List<NotificationRecord> columnNotificationRecordList =
                  snapshot.data!;
              final columnNotificationRecord =
                  columnNotificationRecordList.isNotEmpty
                      ? columnNotificationRecordList.first
                      : null;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Material(
                      color: Colors.transparent,
                      elevation: 1.0,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 767.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).whiteBack,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              2.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).appBar,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 60.0,
                                      icon: Icon(
                                        Icons.chevron_left,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30.0,
                                      ),
                                      onPressed: () async {
                                        context.safePop();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 15.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '7p7bu88l' /* Add Staff */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'xqudi0vh' /* First Name */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFF807F7F),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _model.firstnameController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      validator: _model
                                          .firstnameControllerValidator
                                          .asValidator(context),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).border,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ds6y6dt1' /* Last Name */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SF Pro',
                                        color: Color(0xFF807F7F),
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        TextFormField(
                                          controller: _model.lastnameController,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          validator: _model
                                              .lastnameControllerValidator
                                              .asValidator(context),
                                        ),
                                        Divider(
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .border,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'oumbgqis' /* Email */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFF807F7F),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      height: 52.0,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          child: TextFormField(
                                            controller: _model.emailController,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              focusedErrorBorder:
                                                  InputBorder.none,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .emailControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).border,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'lm6xhl2a' /* Password */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFF807F7F),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _model.passwordController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      obscureText: !_model.passwordVisibility,
                                      decoration: InputDecoration(
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              useGoogleFonts: false,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model.passwordVisibility =
                                                !_model.passwordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            size: 20.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      validator: _model
                                          .passwordControllerValidator
                                          .asValidator(context),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).border,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'bvzeoh4g' /* Confirm Password */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFF807F7F),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    TextFormField(
                                      controller:
                                          _model.confirmPasswordController,
                                      autofocus: true,
                                      obscureText:
                                          !_model.confirmPasswordVisibility,
                                      decoration: InputDecoration(
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model
                                                    .confirmPasswordVisibility =
                                                !_model
                                                    .confirmPasswordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.confirmPasswordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      validator: _model
                                          .confirmPasswordControllerValidator
                                          .asValidator(context),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).border,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 5.0, 10.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '7zi6dd36' /* Form Permissions */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SF Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Container(
                                  width: 412.0,
                                  height: 192.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  child: StreamBuilder<List<FormsDataRecord>>(
                                    stream: queryFormsDataRecord(
                                      queryBuilder: (formsDataRecord) =>
                                          formsDataRecord.where('Admin',
                                              isEqualTo: currentUserEmail),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .customColor3,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<FormsDataRecord>
                                          columnFormsDataRecordList =
                                          snapshot.data!;
                                      return SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: List.generate(
                                              columnFormsDataRecordList.length,
                                              (columnIndex) {
                                            final columnFormsDataRecord =
                                                columnFormsDataRecordList[
                                                    columnIndex];
                                            return Container(
                                              width: 415.0,
                                              height: 42.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .whiteBack,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (FFAppState()
                                                      .permitioform
                                                      .contains(
                                                          columnFormsDataRecord
                                                              .formName))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                .removeFromPermitioform(
                                                                    columnFormsDataRecord
                                                                        .formName);
                                                          });
                                                        },
                                                        child: Icon(
                                                          Icons.check_box,
                                                          color:
                                                              Color(0xFFB29173),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  if (!FFAppState()
                                                      .permitioform
                                                      .contains(
                                                          columnFormsDataRecord
                                                              .formName))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                .addToPermitioform(
                                                                    columnFormsDataRecord
                                                                        .formName);
                                                          });
                                                        },
                                                        child: Icon(
                                                          Icons
                                                              .check_box_outline_blank_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent1,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      columnFormsDataRecord
                                                          .formName,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                color: Color(
                                                                    0xFF767676),
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 1.0,
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.28,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).whiteBack,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 10.0, 20.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ypbsvqae' /* User Permissions */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: 427.0,
                                  height: 129.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).whiteBack,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.8, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      18.0, 0.0, 0.0, 0.0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary600,
                                                ),
                                                child: Checkbox(
                                                  value: _model.adminValue ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.adminValue =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'pe7fmvmm' /* Admin */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            Color(0xFF767676),
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Builder(
                                              builder: (context) => Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showAlignedDialog(
                                                      barrierColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      isGlobal: false,
                                                      avoidOverflow: true,
                                                      targetAnchor:
                                                          AlignmentDirectional(
                                                                  1.0, -1.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      followerAnchor:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      builder: (dialogContext) {
                                                        return Material(
                                                          color: Colors
                                                              .transparent,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () => FocusScope
                                                                    .of(context)
                                                                .requestFocus(_model
                                                                    .unfocusNode),
                                                            child: Container(
                                                              width: 100.0,
                                                              child:
                                                                  Alert01Widget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: Container(
                                                    width: 39.0,
                                                    height: 30.0,
                                                    decoration: BoxDecoration(),
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .infoCircle,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.8, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        18.0, 0.0, 0.0, 0.0),
                                                child: Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                      ),
                                                    ),
                                                    unselectedWidgetColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary600,
                                                  ),
                                                  child: Checkbox(
                                                    value: _model
                                                        .report2Value ??= false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          _model.report2Value =
                                                              newValue!);
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'b2fiu6zj' /* User */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color:
                                                              Color(0xFF767676),
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Builder(
                                                builder: (context) => Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showAlignedDialog(
                                                        barrierColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        isGlobal: false,
                                                        avoidOverflow: true,
                                                        targetAnchor:
                                                            AlignmentDirectional(
                                                                    1.0, -1.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        followerAnchor:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        builder:
                                                            (dialogContext) {
                                                          return Material(
                                                            color: Colors
                                                                .transparent,
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => FocusScope
                                                                      .of(
                                                                          context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode),
                                                              child: Container(
                                                                width: 100.0,
                                                                child:
                                                                    Alert02Widget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: Container(
                                                      width: 39.0,
                                                      height: 30.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .infoCircle,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.8, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        18.0, 0.0, 0.0, 0.0),
                                                child: Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                      ),
                                                    ),
                                                    unselectedWidgetColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary600,
                                                  ),
                                                  child: Checkbox(
                                                    value: _model
                                                        .productValue ??= false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          _model.productValue =
                                                              newValue!);
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'cgakd5cy' /* Viewer */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color:
                                                              Color(0xFF767676),
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Builder(
                                                builder: (context) => Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showAlignedDialog(
                                                        barrierColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        isGlobal: false,
                                                        avoidOverflow: true,
                                                        targetAnchor:
                                                            AlignmentDirectional(
                                                                    1.0, -1.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        followerAnchor:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        builder:
                                                            (dialogContext) {
                                                          return Material(
                                                            color: Colors
                                                                .transparent,
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => FocusScope
                                                                      .of(
                                                                          context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode),
                                                              child: Container(
                                                                width: 100.0,
                                                                child:
                                                                    Alert03Widget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: Container(
                                                      width: 39.0,
                                                      height: 30.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .infoCircle,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                _model.apiresponse = await SendEmailCall.call(
                                  email: _model.emailController.text,
                                  name: _model.firstnameController.text,
                                  admin: widget.adminuseremail,
                                  password: _model.passwordController.text,
                                  boolean: true,
                                  apiKey: '1mgjicjCC8ZRNsmnV7dH',
                                  list: 'dbtzFftNopRWh892UfCZoiqA',
                                );
                                if ((_model.apiresponse?.succeeded ?? true)) {
                                  GoRouter.of(context).prepareAuthEvent();
                                  if (_model.passwordController.text !=
                                      _model.confirmPasswordController.text) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Passwords don\'t match!',
                                        ),
                                      ),
                                    );
                                    return;
                                  }

                                  final user =
                                      await authManager.createAccountWithEmail(
                                    context,
                                    _model.emailController.text,
                                    _model.passwordController.text,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  await currentUserReference!.update({
                                    ...createUserRecordData(
                                      userRole: 'Staff',
                                      email: _model.emailController.text,
                                      displayName:
                                          _model.firstnameController.text,
                                      photoUrl: '',
                                      uid: currentUserUid,
                                      phoneNumber: '',
                                      companyName: '',
                                      createdBy: widget.adminuser,
                                      createdByEmail: widget.adminuseremail,
                                      adminUserId: widget.adminuserId,
                                      admin: '',
                                      adminpermision: _model.adminValue,
                                      userpermition: _model.report2Value,
                                      viewerpermition: _model.productValue,
                                    ),
                                    'formpermitionlist':
                                        FFAppState().permitioform,
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Email send succesfully',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  GoRouter.of(context).prepareAuthEvent();
                                  await authManager.signOut();
                                  GoRouter.of(context).clearRedirectLocation();
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Email Send Fail!',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                }

                                context.pushNamedAuth(
                                    'LoginCopy', context.mounted);

                                setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                '9hr1bikh' /* Save */,
                              ),
                              options: FFButtonOptions(
                                width: 220.0,
                                height: 50.5,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFEB2020),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'SF Pro',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(33.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
