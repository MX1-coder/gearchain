import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setting_user_details_model.dart';
export 'setting_user_details_model.dart';

class SettingUserDetailsWidget extends StatefulWidget {
  const SettingUserDetailsWidget({
    Key? key,
    this.staffName,
    required this.staffuser,
  }) : super(key: key);

  final String? staffName;
  final DocumentReference? staffuser;

  @override
  _SettingUserDetailsWidgetState createState() =>
      _SettingUserDetailsWidgetState();
}

class _SettingUserDetailsWidgetState extends State<SettingUserDetailsWidget> {
  late SettingUserDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingUserDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {});
    });
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
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              FFIcons.kleftOpen,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 20.0,
            ),
            onPressed: () async {
              context.pushNamed('settings_users');
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0.0,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 158.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 6.0,
                          color: Color(0x0F000000),
                          offset: Offset(0.0, 3.0),
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                      child: StreamBuilder<UserRecord>(
                        stream: UserRecord.getDocument(widget.staffuser!),
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
                          final columnUserRecord = snapshot.data!;
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  columnUserRecord.displayName,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 45.0,
                                      height: 45.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          columnUserRecord.photoUrl,
                                          'https://img.freepik.com/free-photo/teenager-boy-portrait_23-2148105678.jpg?w=360&t=st=1684576233~exp=1684576833~hmac=881de866685f11a9c136f0653e152ae71dd0381ffb00adefdeedadc9747104d8',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            columnUserRecord.displayName,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              columnUserRecord.email,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
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
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: StreamBuilder<UserRecord>(
                        stream: UserRecord.getDocument(widget.staffuser!),
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
                          final columnUserRecord = snapshot.data!;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40.0, 30.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'niy5ec7s' /* Form Permition */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: 410.0,
                                  height: 175.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<List<FormsDataRecord>>(
                                      stream: queryFormsDataRecord(
                                        queryBuilder: (formsDataRecord) =>
                                            formsDataRecord.where('Admin',
                                                isEqualTo: columnUserRecord
                                                    .createdByEmail),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
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
                                                columnFormsDataRecordList
                                                    .length, (columnIndex) {
                                              final columnFormsDataRecord =
                                                  columnFormsDataRecordList[
                                                      columnIndex];
                                              return Container(
                                                width: 415.0,
                                                height: 42.0,
                                                decoration: BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (FFAppState()
                                                            .permitioform
                                                            .contains(
                                                                columnFormsDataRecord
                                                                    .formName) ||
                                                        columnUserRecord
                                                            .formpermitionlist
                                                            .contains(
                                                                columnFormsDataRecord
                                                                    .formName))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState().removeFromPermitioform(
                                                                  columnFormsDataRecord
                                                                      .formName);
                                                            });

                                                            await columnUserRecord
                                                                .reference
                                                                .update({
                                                              'formpermitionlist':
                                                                  FieldValue
                                                                      .arrayRemove([
                                                                columnFormsDataRecord
                                                                    .formName
                                                              ]),
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons.check_box,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (!(FFAppState()
                                                            .permitioform
                                                            .contains(
                                                                columnFormsDataRecord
                                                                    .formName) ||
                                                        columnUserRecord
                                                            .formpermitionlist
                                                            .contains(
                                                                columnFormsDataRecord
                                                                    .formName)))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState().addToPermitioform(
                                                                  columnFormsDataRecord
                                                                      .formName);
                                                            });

                                                            await columnUserRecord
                                                                .reference
                                                                .update({
                                                              'formpermitionlist':
                                                                  FieldValue
                                                                      .arrayUnion([
                                                                columnFormsDataRecord
                                                                    .formName
                                                              ]),
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
                                                    Text(
                                                      columnFormsDataRecord
                                                          .formName,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      's6wmseg4' /* Permissions */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 427.0,
                                      height: 400.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.8, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary600,
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .adminValue ??=
                                                            columnUserRecord
                                                                .adminpermision,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .adminValue =
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
                                                      'clhaira0' /* Admin */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent1,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 45.0)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.8, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary600,
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .userValue ??=
                                                            columnUserRecord
                                                                .userpermition,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() =>
                                                              _model.userValue =
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
                                                      'wx5uo80b' /* User */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent1,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 45.0)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.8, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary600,
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .viewerValue ??=
                                                            columnUserRecord
                                                                .viewerpermition,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .viewerValue =
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
                                                      '7mtlubrd' /* Viewer */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent1,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 45.0)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 30.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 60.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      await columnUserRecord
                                                          .reference
                                                          .update(
                                                              createUserRecordData(
                                                        adminpermision:
                                                            _model.adminValue,
                                                        userpermition:
                                                            _model.userValue,
                                                        viewerpermition:
                                                            _model.viewerValue,
                                                      ));
                                                      context.safePop();
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'zo6gzznf' /* Save */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 160.0,
                                                      height: 40.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0xFFEB2020),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
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
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
