import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/drop_down_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'manage_addfielddefault_model.dart';
export 'manage_addfielddefault_model.dart';

class ManageAddfielddefaultWidget extends StatefulWidget {
  const ManageAddfielddefaultWidget({
    Key? key,
    bool? barcode,
    bool? timeStamp,
    bool? nAme,
    this.sTock,
    this.iMage,
    this.dropDown,
    this.pAragraph,
    this.rAdioButton,
    this.gpsCordinates,
    this.sEcondaryBarcode,
    this.hIdden,
    this.dAte,
    this.sHortAnswer,
    this.tags,
    this.price,
    this.webLinks,
    this.numBerCount,
    this.titleName,
    this.admin,
  })  : this.barcode = barcode ?? true,
        this.timeStamp = timeStamp ?? true,
        this.nAme = nAme ?? true,
        super(key: key);

  final bool barcode;
  final bool timeStamp;
  final bool nAme;
  final bool? sTock;
  final bool? iMage;
  final bool? dropDown;
  final bool? pAragraph;
  final bool? rAdioButton;
  final bool? gpsCordinates;
  final bool? sEcondaryBarcode;
  final bool? hIdden;
  final bool? dAte;
  final bool? sHortAnswer;
  final bool? tags;
  final bool? price;
  final bool? webLinks;
  final bool? numBerCount;
  final String? titleName;
  final DocumentReference? admin;

  @override
  _ManageAddfielddefaultWidgetState createState() =>
      _ManageAddfielddefaultWidgetState();
}

class _ManageAddfielddefaultWidgetState
    extends State<ManageAddfielddefaultWidget> with TickerProviderStateMixin {
  late ManageAddfielddefaultModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasColumnTriggered = false;
  final animationsMap = {
    'columnOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageAddfielddefaultModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 30.0,
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 36.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 10.0, 30.0, 10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'gpwp125n' /* Edit Form */,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/Group_501.svg',
                                            width: 22.0,
                                            height: 26.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.titleName!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      barrierColor: Color(0x00000000),
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: DropDownMenuWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  child: Container(
                                    width: 316.0,
                                    height: 59.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).btnText,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 6.0,
                                          color: Color(0x10000000),
                                          offset: Offset(3.0, 3.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          barrierColor: Color(0x00000000),
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: DropDownMenuWidget(
                                                  titleName: widget.titleName,
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'bhembuqy' /*   Barcode */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color: Colors.black,
                                                        fontSize: 13.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Container(
                                                  width: 46.0,
                                                  height: 46.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF5F5F5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.expand_more_outlined,
                                                    color: Colors.black,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ListView(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            if (!valueOrDefault<bool>(
                                              widget.barcode,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 21.9, 0.0, 0.0),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              children: [
                                                                SvgPicture
                                                                    .asset(
                                                                  Theme.of(context)
                                                                              .brightness ==
                                                                          Brightness
                                                                              .dark
                                                                      ? 'assets/images/all_w-barcode_copy.svg'
                                                                      : 'assets/images/all_b-barcode.svg',
                                                                  width: 18.0,
                                                                  height: 14.4,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            40.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'yimmw6hg' /* Barcode */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'SF Pro',
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 40.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .navigate_next,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 24.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                context
                                                                    .pushNamed(
                                                                  'Barcode_option',
                                                                  queryParameters:
                                                                      {
                                                                    'titleName':
                                                                        serializeParam(
                                                                      widget
                                                                          .titleName,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(
                                                        height: 10.0,
                                                        thickness: 1.0,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            if (!valueOrDefault<bool>(
                                              widget.timeStamp,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-time_copy.svg'
                                                                    : 'assets/images/all_b-time.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'ws1qj1af' /* Timestamp */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'timestamp_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 2.5),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            SvgPicture.asset(
                                                              Theme.of(context)
                                                                          .brightness ==
                                                                      Brightness
                                                                          .dark
                                                                  ? 'assets/images/all_w-name_copy.svg'
                                                                  : 'assets/images/all_b-name.svg',
                                                              width: 20.0,
                                                              height: 20.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            40.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '65jx0wii' /* Name */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SF Pro',
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 40.0,
                                                          icon: Icon(
                                                            Icons.navigate_next,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1,
                                                            size: 24.0,
                                                          ),
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                              'name_option',
                                                              queryParameters: {
                                                                'titleName':
                                                                    serializeParam(
                                                                  widget
                                                                      .titleName,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 10.0,
                                                    thickness: 1.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (valueOrDefault<bool>(
                                              widget.sTock,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-stock_copy.svg'
                                                                    : 'assets/images/all_b-stock.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      't736aek3' /* Stock */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'currentStock_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              widget.iMage,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-image_copy.svg'
                                                                    : 'assets/images/all_b-image.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'vph2vdfx' /* Image */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'images_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              widget.dropDown,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-dropdown_copy.svg'
                                                                    : 'assets/images/all_b-dropdown.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '31x4vpzs' /* Dropdown */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'dropdown_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (widget.pAragraph ?? true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-paragraph_copy.svg'
                                                                    : 'assets/images/all_b-paragraph.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'r4icfgtr' /* Paragraph */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'paragraph_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              widget.rAdioButton,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-radio_copy.svg'
                                                                    : 'assets/images/all_b-radio.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'r418fbsv' /* Radio Button */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'radio_Button',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              widget.gpsCordinates,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-gps_copy_2.svg'
                                                                    : 'assets/images/all_b-gps_copy.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          35.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '5mhihc4f' /* GPS-Co Ordinates */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'gps_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (widget.sEcondaryBarcode ?? true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-barcode_copy.svg'
                                                                    : 'assets/images/all_b-barcode.svg',
                                                                width: 18.0,
                                                                height: 14.4,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          30.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'iv20uk2l' /* Secondary Barcode */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'secondaryBarcode_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              widget.hIdden,
                                              true,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-hidden_copy.svg'
                                                                    : 'assets/images/all_b-hidden.svg',
                                                                width: 18.0,
                                                                height: 14.4,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'hg8zic0t' /* Hidden */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'hidden_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              widget.dAte,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-date.svg'
                                                                    : 'assets/images/all_b-date.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '3gp2enao' /* Date */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 20.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'timestamp_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              widget.sHortAnswer,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-short.svg'
                                                                    : 'assets/images/all_b-short.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '789fep2o' /* Short Answer */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 20.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'shortAnswer_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (widget.tags ?? true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w_tag.svg'
                                                                    : 'assets/images/all_b_tag.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'bj3zg1w8' /* Tag */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 20.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'tag_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              widget.price,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-price_copy.svg'
                                                                    : 'assets/images/all_b-price.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'tkabqc5g' /* Price */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 20.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'price_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              widget.webLinks,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/all_w-web.svg'
                                                                    : 'assets/images/all_b-web.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'igtj576x' /* Web Links */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 20.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'weblink_option',
                                                                queryParameters:
                                                                    {
                                                                  'titleName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              widget.numBerCount,
                                              false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 2.5),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              SvgPicture.asset(
                                                                Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? 'assets/images/43.svg'
                                                                    : 'assets/images/b-number.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'xvp50ngp' /* Number Count */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .navigate_next,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 20.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'numberCount_option',
                                                                queryParameters:
                                                                    {
                                                                  'formName':
                                                                      serializeParam(
                                                                    widget
                                                                        .titleName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 10.0,
                                                      thickness: 1.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
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
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 43.0),
                child: StreamBuilder<UserRecord>(
                  stream: UserRecord.getDocument(currentUserReference!),
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
                    final buttonUserRecord = snapshot.data!;
                    return FFButtonWidget(
                      onPressed: () async {
                        await buttonUserRecord.reference.update({
                          ...createUserRecordData(
                            createdByEmail: buttonUserRecord.createdByEmail,
                          ),
                          'formpermitionlist':
                              FieldValue.arrayUnion([widget.titleName]),
                        });

                        await FormsDataRecord.collection.doc().set({
                          ...createFormsDataRecordData(
                            barcode: widget.barcode,
                            timeStamp: widget.timeStamp,
                            date: widget.dAte,
                            shortAnswer: widget.sHortAnswer,
                            paragraph: widget.pAragraph,
                            dropDown: widget.dropDown,
                            checkBoxes: widget.nAme,
                            numbercount: widget.numBerCount,
                            radioButton: widget.rAdioButton,
                            gpsCordinates: widget.gpsCordinates,
                            secondaryBarcode: widget.sEcondaryBarcode,
                            hidden: widget.hIdden,
                            images: widget.iMage,
                            tags: widget.tags,
                            price: widget.price,
                            webLinks: widget.webLinks,
                            stocks: widget.sTock,
                            name: true,
                            formName: widget.titleName,
                            createdby: buttonUserRecord.email,
                            admin: currentUserEmail,
                            owner: currentUserEmail,
                          ),
                          'FormTitle': [widget.titleName],
                          'createTime': FieldValue.serverTimestamp(),
                        });

                        context.pushNamed(
                          'FormHasBeenSaved',
                          queryParameters: {
                            'formName': serializeParam(
                              widget.titleName,
                              ParamType.String,
                            ),
                            'barcode': serializeParam(
                              widget.barcode,
                              ParamType.bool,
                            ),
                            'timestamp': serializeParam(
                              widget.timeStamp,
                              ParamType.bool,
                            ),
                            'name': serializeParam(
                              widget.nAme,
                              ParamType.bool,
                            ),
                            'stock': serializeParam(
                              widget.sTock,
                              ParamType.bool,
                            ),
                            'image': serializeParam(
                              widget.iMage,
                              ParamType.bool,
                            ),
                            'dropdown': serializeParam(
                              widget.dropDown,
                              ParamType.bool,
                            ),
                            'paragraph': serializeParam(
                              widget.pAragraph,
                              ParamType.bool,
                            ),
                            'radiobutton': serializeParam(
                              widget.rAdioButton,
                              ParamType.bool,
                            ),
                            'gps': serializeParam(
                              widget.gpsCordinates,
                              ParamType.bool,
                            ),
                            'secondaryBarcode': serializeParam(
                              widget.sEcondaryBarcode,
                              ParamType.bool,
                            ),
                            'hidden': serializeParam(
                              widget.hIdden,
                              ParamType.bool,
                            ),
                            'date': serializeParam(
                              widget.dAte,
                              ParamType.bool,
                            ),
                            'shortAnswer': serializeParam(
                              widget.sHortAnswer,
                              ParamType.bool,
                            ),
                            'tagS': serializeParam(
                              widget.tags,
                              ParamType.bool,
                            ),
                            'price': serializeParam(
                              widget.price,
                              ParamType.bool,
                            ),
                            'webLinks': serializeParam(
                              widget.webLinks,
                              ParamType.bool,
                            ),
                            'numberCount': serializeParam(
                              false,
                              ParamType.bool,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 1000),
                            ),
                          },
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        'co0t4ji9' /* Save */,
                      ),
                      options: FFButtonOptions(
                        width: 220.0,
                        height: 52.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFEB2020),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'SF Pro',
                                  color: Colors.white,
                                  useGoogleFonts: false,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ).animateOnActionTrigger(
              animationsMap['columnOnActionTriggerAnimation']!,
              hasBeenTriggered: hasColumnTriggered),
        ),
      ),
    );
  }
}
