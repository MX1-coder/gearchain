import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'manage_form_model.dart';
export 'manage_form_model.dart';

class ManageFormWidget extends StatefulWidget {
  const ManageFormWidget({
    Key? key,
    this.formName,
    this.email,
  }) : super(key: key);

  final String? formName;
  final String? email;

  @override
  _ManageFormWidgetState createState() => _ManageFormWidgetState();
}

class _ManageFormWidgetState extends State<ManageFormWidget> {
  late ManageFormModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageFormModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<UserRecord>>(
      stream: queryUserRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).customColor3,
                  ),
                ),
              ),
            ),
          );
        }
        List<UserRecord> manageFormUserRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final manageFormUserRecord = manageFormUserRecordList.isNotEmpty
            ? manageFormUserRecordList.first
            : null;
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
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.keyboard_arrow_left_sharp,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              actions: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.1),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('report');
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'qgkn8c6n' /* SAVE */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro',
                              color: Color(0xFFEB2020),
                              fontSize: 12.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
              centerTitle: true,
            ),
            body: StreamBuilder<List<FormsDataRecord>>(
              stream: queryFormsDataRecord(
                queryBuilder: (formsDataRecord) => formsDataRecord.where(
                    'owner',
                    isEqualTo: manageFormUserRecord?.loginemail),
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
                List<FormsDataRecord> columnFormsDataRecordList =
                    snapshot.data!;
                final columnFormsDataRecord =
                    columnFormsDataRecordList.isNotEmpty
                        ? columnFormsDataRecordList.first
                        : null;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 30.0, 0.0, 20.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'z8w7qf42' /* My forms */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SF Pro',
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Container(
                                width: 327.6,
                                height: 230.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10.0,
                                      color: Color(0x10000000),
                                      offset: Offset(6.0, 3.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: StreamBuilder<List<FormsDataRecord>>(
                                  stream: queryFormsDataRecord(
                                    queryBuilder: (formsDataRecord) =>
                                        formsDataRecord.where('createdby',
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
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            columnFormsDataRecordList.length,
                                            (columnIndex) {
                                          final columnFormsDataRecord =
                                              columnFormsDataRecordList[
                                                  columnIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 30.0, 20.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'Manage_addfielddefaultCopy',
                                                              queryParameters: {
                                                                'titleName':
                                                                    serializeParam(
                                                                  columnFormsDataRecord
                                                                      .formName,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Text(
                                                            columnFormsDataRecord
                                                                .formName,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SF Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .black600,
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ithy2i78' /*  */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                color: Color(
                                                                    0xFFAFAFAF),
                                                                fontSize: 9.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'manualEntry_editItems',
                                                                queryParameters:
                                                                    {
                                                                  'seLectFromDropDown':
                                                                      serializeParam(
                                                                    columnFormsDataRecord
                                                                        .reference
                                                                        .id,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'formName':
                                                                      serializeParam(
                                                                    columnFormsDataRecord
                                                                        .formName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: SvgPicture
                                                                .asset(
                                                              Theme.of(context)
                                                                          .brightness ==
                                                                      Brightness
                                                                          .dark
                                                                  ? 'assets/images/Frame_247.svg'
                                                                  : 'assets/images/Iconly-Light-Edit.svg',
                                                              width: 18.0,
                                                              height: 17.4,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await columnFormsDataRecord
                                                                .reference
                                                                .delete();
                                                          },
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Iconly-Light-Outline-Delete.svg',
                                                            width: 16.6,
                                                            height: 18.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 300.0,
                                                child: Divider(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              if (!((valueOrDefault(
                                          currentUserDocument?.userRole, '') ==
                                      'Admin') ||
                                  (valueOrDefault<bool>(
                                          currentUserDocument?.adminpermision,
                                          false) ==
                                      true)))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 327.6,
                                      height: 250.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 10.0,
                                            color: Color(0x0F000000),
                                            offset: Offset(6.0, 3.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: StreamBuilder<
                                            List<FormsDataRecord>>(
                                          stream: queryFormsDataRecord(
                                            queryBuilder: (formsDataRecord) =>
                                                formsDataRecord.whereIn(
                                                    'formName',
                                                    (currentUserDocument
                                                                    ?.formpermitionlist
                                                                    ?.toList() ??
                                                                []) !=
                                                            ''
                                                        ? (currentUserDocument
                                                                ?.formpermitionlist
                                                                ?.toList() ??
                                                            [])
                                                        : null),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    columnFormsDataRecordList
                                                        .length, (columnIndex) {
                                                  final columnFormsDataRecord =
                                                      columnFormsDataRecordList[
                                                          columnIndex];
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    15.0,
                                                                    20.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  columnFormsDataRecord
                                                                      .formName,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SF Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .black600,
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'zoc333c2' /*  */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SF Pro',
                                                                        color: Color(
                                                                            0xFFAFAFAF),
                                                                        fontSize:
                                                                            9.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      context
                                                                          .pushNamed(
                                                                        'manualEntry_editItems',
                                                                        queryParameters:
                                                                            {
                                                                          'seLectFromDropDown':
                                                                              serializeParam(
                                                                            columnFormsDataRecord.reference.id,
                                                                            ParamType.String,
                                                                          ),
                                                                          'formName':
                                                                              serializeParam(
                                                                            columnFormsDataRecord.formName,
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      Theme.of(context).brightness ==
                                                                              Brightness.dark
                                                                          ? 'assets/images/Frame_247.svg'
                                                                          : 'assets/images/Iconly-Light-Edit.svg',
                                                                      width:
                                                                          18.0,
                                                                      height:
                                                                          17.4,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await columnFormsDataRecord
                                                                        .reference
                                                                        .delete();
                                                                  },
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Iconly-Light-Outline-Delete.svg',
                                                                    width: 16.6,
                                                                    height:
                                                                        18.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 300.0,
                                                        child: Divider(
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                }),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    55.0, 40.0, 55.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('New_form');
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '3vonky37' /* Create a New Form */,
                                  ),
                                  options: FFButtonOptions(
                                    height: 49.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: Color(0xFFE85353),
                                          useGoogleFonts: false,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Color(0xFFE85353),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        child: Container(
                          width: double.infinity,
                          height: 99.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: double.infinity,
                            ),
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 75.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .appBarLight,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 6.0,
                                              color: Color(0x0000000F),
                                              offset: Offset(0.0, -3.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.6),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SvgPicture.asset(
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? 'assets/images/navigation-02.svg'
                                                    : 'assets/images/icon_all-04.svg',
                                                width: 19.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'z1x2nsxp' /* Home */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColor,
                                                        fontSize: 11.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.6),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? 'assets/images/navigation-01.svg'
                                                    : 'assets/images/Group_734.svg',
                                                width: 20.0,
                                                height: 19.8,
                                                fit: BoxFit.cover,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7fdfmuj5' /* Products */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColor,
                                                        fontSize: 11.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -0.75),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 25.0),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 4.0,
                                                    shape: const CircleBorder(),
                                                    child: Container(
                                                      width: 60.0,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFEB2020),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Stack(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, -0.0),
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    1.0,
                                                                buttonSize:
                                                                    45.0,
                                                                icon: Icon(
                                                                  FFIcons.kscan,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 20.0,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.6),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SvgPicture.asset(
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? 'assets/images/navigation-03.svg'
                                                    : 'assets/images/icon_all-05.svg',
                                                width: 18.6,
                                                height: 21.9,
                                                fit: BoxFit.cover,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'yrzm60vv' /* Report */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColor,
                                                        fontSize: 11.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.6),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SvgPicture.asset(
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? 'assets/images/navigation-04.svg'
                                                    : 'assets/images/icon_all-06.svg',
                                                width: 18.7,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'fqj3r1zi' /* Notification */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColor,
                                                        fontSize: 11.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
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
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
