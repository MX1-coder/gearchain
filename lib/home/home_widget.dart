import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/access_camera_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    Key? key,
    this.formName,
    bool? barcode,
    bool? timeStamp,
    bool? name,
    bool? stock,
    bool? image,
    bool? dropDown,
    bool? paraGraph,
    bool? radioButton,
    bool? gpsCo,
    bool? secondaryBarcode,
    bool? hidden,
    bool? date,
    bool? shortAnswer,
    bool? tag,
    bool? price,
    this.webLinks,
    bool? numberCount,
    this.dROPdOWNsELECTIONfORM,
    this.nAme,
    this.eMail,
    this.selectedForm,
  })  : this.barcode = barcode ?? false,
        this.timeStamp = timeStamp ?? false,
        this.name = name ?? false,
        this.stock = stock ?? false,
        this.image = image ?? false,
        this.dropDown = dropDown ?? false,
        this.paraGraph = paraGraph ?? false,
        this.radioButton = radioButton ?? false,
        this.gpsCo = gpsCo ?? false,
        this.secondaryBarcode = secondaryBarcode ?? false,
        this.hidden = hidden ?? false,
        this.date = date ?? false,
        this.shortAnswer = shortAnswer ?? false,
        this.tag = tag ?? false,
        this.price = price ?? false,
        this.numberCount = numberCount ?? false,
        super(key: key);

  final String? formName;
  final bool barcode;
  final bool timeStamp;
  final bool name;
  final bool stock;
  final bool image;
  final bool dropDown;
  final bool paraGraph;
  final bool radioButton;
  final bool gpsCo;
  final bool secondaryBarcode;
  final bool hidden;
  final bool date;
  final bool shortAnswer;
  final bool tag;
  final bool price;
  final bool? webLinks;
  final bool numberCount;
  final String? dROPdOWNsELECTIONfORM;
  final String? nAme;
  final String? eMail;
  final String? selectedForm;

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<FormsDataRecord>>(
      stream: queryFormsDataRecord(
        queryBuilder: (formsDataRecord) =>
            formsDataRecord.where('createdby', isEqualTo: currentUserEmail),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
        List<FormsDataRecord> homeFormsDataRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: Drawer(
              elevation: 16.0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 177.6,
                    decoration: BoxDecoration(
                      color: Color(0xFFE85353),
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('settings_Profile');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                40.0, 0.0, 20.0, 0.0),
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/Mask_Group_8.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  'Welcome ${currentUserDisplayName}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SF Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .btnText,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Text(
                                currentUserEmail,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro',
                                      color:
                                          FlutterFlowTheme.of(context).btnText,
                                      fontWeight: FontWeight.w300,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 700.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 300.0,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    42.0, 0.0, 18.0, 0.0),
                                            child: Icon(
                                              Icons.settings_outlined,
                                              color: Color(0xFFEB2020),
                                              size: 22.0,
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '13xs1ggl' /* Settings */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: Color(0xFFEB2020),
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState().OpenDrawer =
                                                    valueOrDefault<bool>(
                                                  FFAppState().OpenDrawer ==
                                                      false,
                                                  false,
                                                );
                                              });
                                            },
                                            child: Stack(
                                              children: [
                                                if (FFAppState().OpenDrawer ==
                                                    false)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(100.0,
                                                                0.0, 0.0, 0.0),
                                                    child: Image.asset(
                                                      'assets/images/+icon.png',
                                                      width: 20.0,
                                                      height: 20.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                if (FFAppState().OpenDrawer ==
                                                    true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(103.0,
                                                                0.0, 0.0, 0.0),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.minus,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor3,
                                                      size: 14.0,
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
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState().OpenDrawer)
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            85.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed('Wallet');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4ehp4xuu' /* Wallet */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().OpenDrawer)
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            85.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'manage_form');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '34wvpb6w' /* Form Settngs */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().OpenDrawer)
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            85.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'settings_language');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ln964y3e' /* Language */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().OpenDrawer &&
                                      (currentUserEmail == 'Admin'))
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            85.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'settings_users');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sia5vp2d' /* Manage Users */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().OpenDrawer)
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            85.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'Buy_credits');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8kqduobg' /* Billing */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().OpenDrawer)
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            85.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed('plan1');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dily64kr' /* Plan */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().OpenDrawer)
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            85.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'settings-notifications');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '521kp9xn' /* Notification */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
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
                              Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      45.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('report');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      3.0, 0.0, 22.0, 0.0),
                                              child: SvgPicture.asset(
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? 'assets/images/gear_all_icon_for_iconmoon_w-s-report_copy_2.svg'
                                                    : 'assets/images/gear_all_icon_for_iconmoon_g-s-report_copy.svg',
                                                width: 12.7,
                                                height: 15.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'n3763f7i' /* Report */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColor,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      45.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: SvgPicture.asset(
                                              Theme.of(context).brightness ==
                                                      Brightness.dark
                                                  ? 'assets/images/gear_all_icon_for_iconmoon_w-s-user_guide_copy_2.svg'
                                                  : 'assets/images/gear_all_icon_for_iconmoon_g-s-user_guide_copy.svg',
                                              width: 16.0,
                                              height: 16.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '03f467tu' /* User Guide */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .iconColor,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      45.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: SvgPicture.asset(
                                              Theme.of(context).brightness ==
                                                      Brightness.dark
                                                  ? 'assets/images/gear_all_icon_for_iconmoon_w-s-support_copy_2.svg'
                                                  : 'assets/images/gear_all_icon_for_iconmoon_g-s-support_copy.svg',
                                              width: 17.0,
                                              height: 17.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'fpmu5rmo' /* Support */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .iconColor,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      45.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: SvgPicture.asset(
                                              Theme.of(context).brightness ==
                                                      Brightness.dark
                                                  ? 'assets/images/gear_all_icon_for_iconmoon_w-s-faq_copy_2.svg'
                                                  : 'assets/images/gear_all_icon_for_iconmoon_g-s-faq_copy.svg',
                                              width: 15.0,
                                              height: 15.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'b7zqgq3j' /* FAQ */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      45.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('setting_about');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: SvgPicture.asset(
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? 'assets/images/gear_all_icon_for_iconmoon_w-s-about_copy_2.svg'
                                                    : 'assets/images/gear_all_icon_for_iconmoon_g-s-about_copy.svg',
                                                width: 16.0,
                                                height: 16.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1r5kon52' /* About */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColor,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      45.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.goNamedAuth(
                                          'Login', context.mounted);
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: SvgPicture.asset(
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? 'assets/images/gear_all_icon_for_iconmoon_w-s-logout_copy_2.svg'
                                                    : 'assets/images/gear_all_icon_for_iconmoon_g-s-logout_copy.svg',
                                                width: 16.6,
                                                height: 12.8,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4t4bjgxw' /* Logout */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColor,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.15, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 30.0, 30.0, 30.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFFEB2020),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 20.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'tp5fmg4g' /* Upgrade Plan - Save 50% */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFFEB2020),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                        Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? 'assets/images/gear_logo_new.png'
                                            : 'assets/images/gear_logo_new.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'pey9akt5' /* All right reserved */,
                                    ),
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, _) => [
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  backgroundColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  automaticallyImplyLeading: false,
                  title: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  scaffoldKey.currentState!.openDrawer();
                                },
                                child: Image.asset(
                                  Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? 'assets/images/baseline-format_align_justify-24px_(1).svg'
                                      : 'assets/images/menu_line@2x.png',
                                  width: 20.0,
                                  height: 20.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 20.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  FFLocalizations.of(context).getText(
                                    'vhr08nbe' /* HOME */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SF Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                      ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  actions: [],
                  centerTitle: false,
                  elevation: 0.0,
                )
              ],
              body: Builder(
                builder: (context) {
                  return Stack(
                    children: [
                      StreamBuilder<List<AddStaffRecord>>(
                        stream: queryAddStaffRecord(
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
                          List<AddStaffRecord> columnAddStaffRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final columnAddStaffRecord =
                              columnAddStaffRecordList.isNotEmpty
                                  ? columnAddStaffRecordList.first
                                  : null;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                StreamBuilder<List<UserRecord>>(
                                  stream: queryUserRecord(
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .customColor3,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<UserRecord> columnUserRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final columnUserRecord =
                                        columnUserRecordList.isNotEmpty
                                            ? columnUserRecordList.first
                                            : null;
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        50.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Stack(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          30.0,
                                                                          0.0,
                                                                          30.0,
                                                                          0.0),
                                                                  child: StreamBuilder<
                                                                      List<
                                                                          FormsDataRecord>>(
                                                                    stream:
                                                                        queryFormsDataRecord(
                                                                      singleRecord:
                                                                          true,
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).customColor3,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<FormsDataRecord>
                                                                          columnFormsDataRecordList =
                                                                          snapshot
                                                                              .data!;
                                                                      // Return an empty Container when the item does not exist.
                                                                      if (snapshot
                                                                          .data!
                                                                          .isEmpty) {
                                                                        return Container();
                                                                      }
                                                                      final columnFormsDataRecord = columnFormsDataRecordList
                                                                              .isNotEmpty
                                                                          ? columnFormsDataRecordList
                                                                              .first
                                                                          : null;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          if (!((valueOrDefault(currentUserDocument?.userRole, '') == 'Admin') ||
                                                                              (valueOrDefault<bool>(currentUserDocument?.adminpermision, false) == true)))
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: AuthUserStreamWidget(
                                                                                builder: (context) => Container(
                                                                                  height: 59.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).btnText,
                                                                                    borderRadius: BorderRadius.circular(16.0),
                                                                                    border: Border.all(
                                                                                      color: Color(0xFFD3D3D3),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                    child: StreamBuilder<List<FormsDataRecord>>(
                                                                                      stream: queryFormsDataRecord(
                                                                                        queryBuilder: (formsDataRecord) => formsDataRecord.whereIn('formName', (currentUserDocument?.formpermitionlist?.toList() ?? []) != '' ? (currentUserDocument?.formpermitionlist?.toList() ?? []) : null),
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
                                                                                        List<FormsDataRecord> dropdownStaffFormsDataRecordList = snapshot.data!;
                                                                                        return FlutterFlowDropDown<String>(
                                                                                          controller: _model.dropdownStaffValueController ??= FormFieldController<String>(
                                                                                            _model.dropdownStaffValue ??= FFLocalizations.of(context).getText(
                                                                                              'vy511v54' /* staff */,
                                                                                            ),
                                                                                          ),
                                                                                          options: dropdownStaffFormsDataRecordList.map((e) => e.formName).toList(),
                                                                                          onChanged: (val) => setState(() => _model.dropdownStaffValue = val),
                                                                                          height: 50.0,
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'SF Pro',
                                                                                                color: Colors.black,
                                                                                                fontSize: 16.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                          hintText: FFLocalizations.of(context).getText(
                                                                                            'xxnsx7iz' /* staff */,
                                                                                          ),
                                                                                          icon: Icon(
                                                                                            Icons.keyboard_arrow_down_sharp,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 30.0,
                                                                                          ),
                                                                                          fillColor: Colors.white,
                                                                                          elevation: 2.0,
                                                                                          borderColor: Colors.transparent,
                                                                                          borderWidth: 0.0,
                                                                                          borderRadius: 0.0,
                                                                                          margin: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                                                                                          hidesUnderline: true,
                                                                                          isSearchable: false,
                                                                                          isMultiSelect: false,
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if ((valueOrDefault(currentUserDocument?.userRole, '') == 'Admin') ||
                                                                              (valueOrDefault<bool>(currentUserDocument?.adminpermision, false) == true))
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: AuthUserStreamWidget(
                                                                                builder: (context) => Container(
                                                                                  height: 59.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).btnText,
                                                                                    borderRadius: BorderRadius.circular(16.0),
                                                                                    border: Border.all(
                                                                                      color: Color(0xFFD3D3D3),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                    child: FutureBuilder<List<FormsDataRecord>>(
                                                                                      future: queryFormsDataRecordOnce(
                                                                                        queryBuilder: (formsDataRecord) => formsDataRecord.where('Admin', isEqualTo: currentUserEmail != '' ? currentUserEmail : null),
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
                                                                                        List<FormsDataRecord> dropdownAdminFormsDataRecordList = snapshot.data!;
                                                                                        return FlutterFlowDropDown<String>(
                                                                                          controller: _model.dropdownAdminValueController ??= FormFieldController<String>(
                                                                                            _model.dropdownAdminValue ??= FFLocalizations.of(context).getText(
                                                                                              'x70tpx6k' /* admin */,
                                                                                            ),
                                                                                          ),
                                                                                          options: dropdownAdminFormsDataRecordList.map((e) => e.formName).toList(),
                                                                                          onChanged: (val) => setState(() => _model.dropdownAdminValue = val),
                                                                                          height: 50.0,
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'SF Pro',
                                                                                                color: Colors.black,
                                                                                                fontSize: 16.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                          hintText: FFLocalizations.of(context).getText(
                                                                                            'rtux5n5j' /* admin */,
                                                                                          ),
                                                                                          icon: Icon(
                                                                                            Icons.keyboard_arrow_down_sharp,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 30.0,
                                                                                          ),
                                                                                          fillColor: Colors.white,
                                                                                          elevation: 2.0,
                                                                                          borderColor: Colors.transparent,
                                                                                          borderWidth: 0.0,
                                                                                          borderRadius: 0.0,
                                                                                          margin: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                                                                                          hidesUnderline: true,
                                                                                          isSearchable: false,
                                                                                          isMultiSelect: false,
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                20.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Expanded(
                                                                                  flex: 1,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 147.0,
                                                                                      height: 147.0,
                                                                                      decoration: BoxDecoration(
                                                                                        boxShadow: [
                                                                                          BoxShadow(
                                                                                            blurRadius: 10.0,
                                                                                            color: Color(0x10000000),
                                                                                            offset: Offset(10.0, 10.0),
                                                                                            spreadRadius: 0.0,
                                                                                          )
                                                                                        ],
                                                                                        gradient: LinearGradient(
                                                                                          colors: [
                                                                                            FlutterFlowTheme.of(context).tileG1,
                                                                                            FlutterFlowTheme.of(context).tileG2
                                                                                          ],
                                                                                          stops: [0.5, 1.0],
                                                                                          begin: AlignmentDirectional(1.0, 0.87),
                                                                                          end: AlignmentDirectional(-1.0, -0.87),
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(16.0),
                                                                                        border: Border.all(
                                                                                          color: Color(0xFFEB2020),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: StreamBuilder<List<FormsDataRecord>>(
                                                                                          stream: queryFormsDataRecord(
                                                                                            queryBuilder: (formsDataRecord) => formsDataRecord.where('formName', isEqualTo: widget.formName),
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
                                                                                            List<FormsDataRecord> columnFormsDataRecordList = snapshot.data!;
                                                                                            // Return an empty Container when the item does not exist.
                                                                                            if (snapshot.data!.isEmpty) {
                                                                                              return Container();
                                                                                            }
                                                                                            final columnFormsDataRecord = columnFormsDataRecordList.isNotEmpty ? columnFormsDataRecordList.first : null;
                                                                                            return InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if ((valueOrDefault(currentUserDocument?.userRole, '') == 'Admin') || (valueOrDefault<bool>(currentUserDocument?.adminpermision, false) == true) || (valueOrDefault<bool>(currentUserDocument?.userpermition, false) == true)) {
                                                                                                  await showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    enableDrag: false,
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return GestureDetector(
                                                                                                        onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                                        child: Padding(
                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                          child: AccessCameraWidget(
                                                                                                            formName: widget.formName,
                                                                                                            barcode: widget.barcode,
                                                                                                            timeStamp: widget.timeStamp,
                                                                                                            name: widget.name,
                                                                                                            stock: widget.stock,
                                                                                                            image: widget.image,
                                                                                                            dropDown: widget.dropDown,
                                                                                                            paragraph: widget.paraGraph,
                                                                                                            radioButton: widget.radioButton,
                                                                                                            gpsCo: widget.gpsCo,
                                                                                                            secondaryBarcode: widget.secondaryBarcode,
                                                                                                            hidden: widget.hidden,
                                                                                                            date: widget.date,
                                                                                                            shortAnswer: widget.shortAnswer,
                                                                                                            tag: widget.tag,
                                                                                                            price: widget.price,
                                                                                                            weblinks: widget.webLinks,
                                                                                                            numberCount: widget.numberCount,
                                                                                                            email: widget.eMail,
                                                                                                            selectedformAdmin: _model.dropdownAdminValue,
                                                                                                            selectedFormStaff: _model.dropdownStaffValue,
                                                                                                            selectedDropDownStaff: _model.dropdownStaffValue,
                                                                                                            catoGory: currentUserUid,
                                                                                                            dropDownAdmin: _model.dropdownAdminValue,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => setState(() {}));

                                                                                                  setState(() {
                                                                                                    _model.dropdownStaffValueController?.value = widget.formName!;
                                                                                                  });
                                                                                                } else {
                                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                                    SnackBar(
                                                                                                      content: Text(
                                                                                                        'You dont have permition to Acces This',
                                                                                                        style: TextStyle(
                                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                        ),
                                                                                                      ),
                                                                                                      duration: Duration(milliseconds: 4000),
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                              },
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      SvgPicture.asset(
                                                                                                        'assets/images/scanner_icon.svg',
                                                                                                        width: 36.0,
                                                                                                        height: 29.0,
                                                                                                        fit: BoxFit.cover,
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                                        child: SelectionArea(
                                                                                                            child: Text(
                                                                                                          FFLocalizations.of(context).getText(
                                                                                                            'kjb4165m' /* Scanner */,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'SF Pro',
                                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                fontWeight: FontWeight.normal,
                                                                                                                useGoogleFonts: false,
                                                                                                              ),
                                                                                                        )),
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
                                                                                ),
                                                                                Expanded(
                                                                                  flex: 1,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 147.0,
                                                                                      height: 147.0,
                                                                                      decoration: BoxDecoration(
                                                                                        boxShadow: [
                                                                                          BoxShadow(
                                                                                            blurRadius: 10.0,
                                                                                            color: Color(0x10000000),
                                                                                            offset: Offset(10.0, 10.0),
                                                                                            spreadRadius: 0.0,
                                                                                          )
                                                                                        ],
                                                                                        gradient: LinearGradient(
                                                                                          colors: [
                                                                                            FlutterFlowTheme.of(context).tileG1,
                                                                                            FlutterFlowTheme.of(context).tileG2
                                                                                          ],
                                                                                          stops: [0.5, 1.0],
                                                                                          begin: AlignmentDirectional(1.0, 0.87),
                                                                                          end: AlignmentDirectional(-1.0, -0.87),
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(16.0),
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).whiteBack,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: StreamBuilder<List<FormsDataRecord>>(
                                                                                          stream: queryFormsDataRecord(
                                                                                            queryBuilder: (formsDataRecord) => formsDataRecord.where('FormTitle', arrayContains: widget.formName),
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
                                                                                            List<FormsDataRecord> columnFormsDataRecordList = snapshot.data!;
                                                                                            final columnFormsDataRecord = columnFormsDataRecordList.isNotEmpty ? columnFormsDataRecordList.first : null;
                                                                                            return InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if ((valueOrDefault(currentUserDocument?.userRole, '') == 'Admin') || (valueOrDefault<bool>(currentUserDocument?.adminpermision, false) == true) || (valueOrDefault<bool>(currentUserDocument?.userpermition, false) == true)) {
                                                                                                  context.pushNamed(
                                                                                                    'manualEntry_addItemsWithoutBarcode',
                                                                                                    queryParameters: {
                                                                                                      'formName': serializeParam(
                                                                                                        widget.formName,
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'barcode': serializeParam(
                                                                                                        widget.barcode,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'timeStamp': serializeParam(
                                                                                                        widget.timeStamp,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'name': serializeParam(
                                                                                                        widget.name,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'stock': serializeParam(
                                                                                                        widget.stock,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'image': serializeParam(
                                                                                                        widget.image,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'dropDown': serializeParam(
                                                                                                        widget.dropDown,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'paraGraph': serializeParam(
                                                                                                        widget.paraGraph,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'radioButton': serializeParam(
                                                                                                        widget.radioButton,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'gps': serializeParam(
                                                                                                        widget.gpsCo,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'secondaryBarcode': serializeParam(
                                                                                                        widget.secondaryBarcode,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'hidden': serializeParam(
                                                                                                        widget.hidden,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'date': serializeParam(
                                                                                                        widget.date,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'shortAnswer': serializeParam(
                                                                                                        widget.shortAnswer,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'tag': serializeParam(
                                                                                                        widget.tag,
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
                                                                                                        widget.numberCount,
                                                                                                        ParamType.bool,
                                                                                                      ),
                                                                                                      'dropDownSelectionForm': serializeParam(
                                                                                                        _model.dropdownAdminValue,
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'caTOGORY': serializeParam(
                                                                                                        FFAppState().CATEGORY,
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'selectionDropDownStaff': serializeParam(
                                                                                                        currentUserUid,
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );
                                                                                                } else {
                                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                                    SnackBar(
                                                                                                      content: Text(
                                                                                                        'You dont have Permition to access this',
                                                                                                        style: TextStyle(
                                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                        ),
                                                                                                      ),
                                                                                                      duration: Duration(milliseconds: 4000),
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                              },
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                    children: [
                                                                                                      SvgPicture.asset(
                                                                                                        'assets/images/manual_entry_icon.svg',
                                                                                                        width: 38.0,
                                                                                                        height: 45.0,
                                                                                                        fit: BoxFit.cover,
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      SelectionArea(
                                                                                                          child: Text(
                                                                                                        FFLocalizations.of(context).getText(
                                                                                                          'qpfawxm3' /* Manual Entry */,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'SF Pro',
                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                              fontSize: 14.0,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                              useGoogleFonts: false,
                                                                                                            ),
                                                                                                      )),
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
                                                                                ),
                                                                              ].divide(SizedBox(width: 10.0)),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.05),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 1,
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 147.0,
                                                                                        height: 147.0,
                                                                                        decoration: BoxDecoration(
                                                                                          boxShadow: [
                                                                                            BoxShadow(
                                                                                              blurRadius: 10.0,
                                                                                              color: Color(0x10000000),
                                                                                              offset: Offset(10.0, 10.0),
                                                                                              spreadRadius: 0.0,
                                                                                            )
                                                                                          ],
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              FlutterFlowTheme.of(context).tileG1,
                                                                                              FlutterFlowTheme.of(context).tileG2
                                                                                            ],
                                                                                            stops: [0.5, 1.0],
                                                                                            begin: AlignmentDirectional(1.0, 0.87),
                                                                                            end: AlignmentDirectional(-1.0, -0.87),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(16.0),
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).whiteBack,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                          child: StreamBuilder<List<FormsDataRecord>>(
                                                                                            stream: queryFormsDataRecord(
                                                                                              queryBuilder: (formsDataRecord) => formsDataRecord.where('FormTitle', arrayContains: widget.formName),
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
                                                                                              List<FormsDataRecord> columnFormsDataRecordList = snapshot.data!;
                                                                                              // Return an empty Container when the item does not exist.
                                                                                              if (snapshot.data!.isEmpty) {
                                                                                                return Container();
                                                                                              }
                                                                                              final columnFormsDataRecord = columnFormsDataRecordList.isNotEmpty ? columnFormsDataRecordList.first : null;
                                                                                              return InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  if ((valueOrDefault(currentUserDocument?.userRole, '') == 'Admin') || (valueOrDefault<bool>(currentUserDocument?.adminpermision, false) == true) || (valueOrDefault<bool>(currentUserDocument?.userpermition, false) == true)) {
                                                                                                    context.pushNamed(
                                                                                                      'Product_search',
                                                                                                      queryParameters: {
                                                                                                        'emailowner': serializeParam(
                                                                                                          currentUserEmail,
                                                                                                          ParamType.String,
                                                                                                        ),
                                                                                                      }.withoutNulls,
                                                                                                    );
                                                                                                  } else {
                                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                                      SnackBar(
                                                                                                        content: Text(
                                                                                                          'You dont have permition to access this',
                                                                                                          style: TextStyle(
                                                                                                            color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                          ),
                                                                                                        ),
                                                                                                        duration: Duration(milliseconds: 4000),
                                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                },
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                      children: [
                                                                                                        SvgPicture.asset(
                                                                                                          'assets/images/Group_736.svg',
                                                                                                          width: 40.0,
                                                                                                          height: 39.7,
                                                                                                          fit: BoxFit.cover,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                                          child: SelectionArea(
                                                                                                              child: Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'sioslfzz' /* Products */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'SF Pro',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  fontWeight: FontWeight.normal,
                                                                                                                  useGoogleFonts: false,
                                                                                                                ),
                                                                                                          )),
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
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 1,
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 147.0,
                                                                                        height: 147.0,
                                                                                        decoration: BoxDecoration(
                                                                                          boxShadow: [
                                                                                            BoxShadow(
                                                                                              blurRadius: 10.0,
                                                                                              color: Color(0x10000000),
                                                                                              offset: Offset(10.0, 10.0),
                                                                                              spreadRadius: 0.0,
                                                                                            )
                                                                                          ],
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              FlutterFlowTheme.of(context).tileG1,
                                                                                              FlutterFlowTheme.of(context).tileG2
                                                                                            ],
                                                                                            stops: [0.5, 1.0],
                                                                                            begin: AlignmentDirectional(1.0, 0.87),
                                                                                            end: AlignmentDirectional(-1.0, -0.87),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(16.0),
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).whiteBack,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              if ((valueOrDefault(currentUserDocument?.userRole, '') == 'Admin') || (valueOrDefault<bool>(currentUserDocument?.adminpermision, false) == true) || (valueOrDefault<bool>(currentUserDocument?.userpermition, false) == true)) {
                                                                                                context.pushNamed(
                                                                                                  'report',
                                                                                                  queryParameters: {
                                                                                                    'email': serializeParam(
                                                                                                      widget.eMail,
                                                                                                      ParamType.String,
                                                                                                    ),
                                                                                                  }.withoutNulls,
                                                                                                );
                                                                                              } else {
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      'You Dont Have permition To acces this',
                                                                                                      style: TextStyle(
                                                                                                        color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      ),
                                                                                                    ),
                                                                                                    duration: Duration(milliseconds: 4000),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                  ),
                                                                                                );
                                                                                              }
                                                                                            },
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    SvgPicture.asset(
                                                                                                      'assets/images/Iconly-Light-Paper.svg',
                                                                                                      width: 34.6,
                                                                                                      height: 41.0,
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                                      child: SelectionArea(
                                                                                                          child: Text(
                                                                                                        FFLocalizations.of(context).getText(
                                                                                                          'i0chqytx' /* Report */,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'SF Pro',
                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                              useGoogleFonts: false,
                                                                                                            ),
                                                                                                      )),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 10.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                100.0),
                                                                            child:
                                                                                Container(
                                                                              width: double.infinity,
                                                                              decoration: BoxDecoration(
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 10.0,
                                                                                    color: Color(0x10000000),
                                                                                    offset: Offset(10.0, 10.0),
                                                                                    spreadRadius: 0.0,
                                                                                  )
                                                                                ],
                                                                                gradient: LinearGradient(
                                                                                  colors: [
                                                                                    FlutterFlowTheme.of(context).tileG1,
                                                                                    FlutterFlowTheme.of(context).tileG2
                                                                                  ],
                                                                                  stops: [
                                                                                    0.5,
                                                                                    1.0
                                                                                  ],
                                                                                  begin: AlignmentDirectional(1.0, 0.87),
                                                                                  end: AlignmentDirectional(-1.0, -0.87),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(15.0),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).whiteBack,
                                                                                  width: 1.0,
                                                                                ),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 10.0),
                                                                                        child: Icon(
                                                                                          FFIcons.ksmile,
                                                                                          color: FlutterFlowTheme.of(context).customColor3,
                                                                                          size: 40.0,
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    '2f01jdkl' /* Let's Build App or Analyze Dat... */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Align(
                                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                                          child: AutoSizeText(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'al4fjoy3' /* Ask, such as; */,
                                                                                                            ),
                                                                                                            textAlign: TextAlign.start,
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'SF Pro',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  useGoogleFonts: false,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Expanded(
                                                                                                            child: Align(
                                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                              child: AutoSizeText(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  '75x37hxc' /* Build me a form for retail sto... */,
                                                                                                                ),
                                                                                                                textAlign: TextAlign.start,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'SF Pro',
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      fontStyle: FontStyle.italic,
                                                                                                                      useGoogleFonts: false,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Expanded(
                                                                                                            child: Align(
                                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                                                child: AutoSizeText(
                                                                                                                  FFLocalizations.of(context).getText(
                                                                                                                    'kh51ay0d' /* What is the most popular item? */,
                                                                                                                  ),
                                                                                                                  textAlign: TextAlign.start,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'SF Pro',
                                                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                                                        fontStyle: FontStyle.italic,
                                                                                                                        useGoogleFonts: false,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
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
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
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
                                                .appLight2,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 6.0,
                                                color: Color(0x0F00000F),
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
                                  StreamBuilder<List<AddStaffRecord>>(
                                    stream: queryAddStaffRecord(
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .customColor3,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<AddStaffRecord>
                                          rowAddStaffRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final rowAddStaffRecord =
                                          rowAddStaffRecordList.isNotEmpty
                                              ? rowAddStaffRecordList.first
                                              : null;
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.6),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Divider(
                                                    thickness: 1.0,
                                                    color: Color(0xFFF50E0E),
                                                  ),
                                                  SvgPicture.asset(
                                                    Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? 'assets/images/navigation-02.svg'
                                                        : 'assets/images/icon_all-04.svg',
                                                    width: 19.0,
                                                    height: 20.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6wj7fl95' /* Home */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                fontSize: 11.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    false,
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((valueOrDefault(
                                                              currentUserDocument
                                                                  ?.userRole,
                                                              '') ==
                                                          'Admin') ||
                                                      (valueOrDefault<bool>(
                                                              currentUserDocument
                                                                  ?.adminpermision,
                                                              false) ==
                                                          true) ||
                                                      (valueOrDefault<bool>(
                                                              currentUserDocument
                                                                  ?.userpermition,
                                                              false) ==
                                                          true)) {
                                                    context.pushNamed(
                                                        'Product_search');
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'You dont have permition to access this',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                  }
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SvgPicture.asset(
                                                      Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.dark
                                                          ? 'assets/images/navigation-01.svg'
                                                          : 'assets/images/product_g-09.svg',
                                                      width: 20.0,
                                                      height: 19.8,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hcfz9kg3' /* Products */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SF Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconColor,
                                                                  fontSize:
                                                                      11.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.0, -0.75),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  25.0),
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
                                                          _model.barcodeAction =
                                                              await FlutterBarcodeScanner
                                                                  .scanBarcode(
                                                            '#C62828', // scanning line color
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'o1nhpt6z' /* Cancel */,
                                                            ), // cancel button text
                                                            true, // whether to show the flash icon
                                                            ScanMode.QR,
                                                          );

                                                          await queryProductRecordOnce()
                                                              .then(
                                                                (records) => _model
                                                                        .simpleSearchResults =
                                                                    TextSearch(
                                                                  records
                                                                      .map(
                                                                        (record) => TextSearchItem(
                                                                            record,
                                                                            [
                                                                              record.barCode!,
                                                                              record.name!
                                                                            ]),
                                                                      )
                                                                      .toList(),
                                                                )
                                                                        .search(widget
                                                                            .barcode
                                                                            .toString())
                                                                        .map((r) =>
                                                                            r.object)
                                                                        .take(2)
                                                                        .toList(),
                                                              )
                                                              .onError((_,
                                                                      __) =>
                                                                  _model.simpleSearchResults =
                                                                      [])
                                                              .whenComplete(() =>
                                                                  setState(
                                                                      () {}));

                                                          setState(() {});
                                                        },
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 4.0,
                                                          shape:
                                                              const CircleBorder(),
                                                          child: Container(
                                                            width: 60.0,
                                                            height: 60.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEB2020),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Stack(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        -0.0),
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                    child:
                                                                        FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          45.0,
                                                                      icon:
                                                                          Icon(
                                                                        FFIcons
                                                                            .kscan,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            22.0,
                                                                      ),
                                                                      onPressed:
                                                                          () {
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.6),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((valueOrDefault(
                                                              currentUserDocument
                                                                  ?.userRole,
                                                              '') ==
                                                          'Admin') ||
                                                      (valueOrDefault<bool>(
                                                              currentUserDocument
                                                                  ?.adminpermision,
                                                              false) ==
                                                          true) ||
                                                      (valueOrDefault<bool>(
                                                              currentUserDocument
                                                                  ?.userpermition,
                                                              false) ==
                                                          true)) {
                                                    context.pushNamed('report');
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'You Dont Have permition To acces this',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                  }
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    SvgPicture.asset(
                                                      Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.dark
                                                          ? 'assets/images/navigation-03.svg'
                                                          : 'assets/images/icon_all-05.svg',
                                                      width: 19.0,
                                                      height: 22.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'anumldpd' /* Report */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SF Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconColor,
                                                                  fontSize:
                                                                      11.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.6),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                      'settings-notifications');
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    SvgPicture.asset(
                                                      Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.dark
                                                          ? 'assets/images/navigation-04.svg'
                                                          : 'assets/images/icon_all-06.svg',
                                                      width: 18.7,
                                                      height: 20.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gxhkz2wv' /* Notification */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SF Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconColor,
                                                                  fontSize:
                                                                      11.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
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
          ),
        );
      },
    );
  }
}
