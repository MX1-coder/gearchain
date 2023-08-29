import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_language_model.dart';
export 'settings_language_model.dart';

class SettingsLanguageWidget extends StatefulWidget {
  const SettingsLanguageWidget({Key? key}) : super(key: key);

  @override
  _SettingsLanguageWidgetState createState() => _SettingsLanguageWidgetState();
}

class _SettingsLanguageWidgetState extends State<SettingsLanguageWidget> {
  late SettingsLanguageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsLanguageModel());
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
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              FFIcons.kleftOpen,
              color: FlutterFlowTheme.of(context).secondary,
              size: 20.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-1.2, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'wv505yv3' /* Settings */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '9o2r9a0c' /* Language */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SF Pro',
                            color: FlutterFlowTheme.of(context).secondary,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 14.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '1z8p5s7z' /* Select language */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SF Pro',
                            color: FlutterFlowTheme.of(context).accent2,
                            fontSize: 13.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 23.0, 20.0, 0.0),
                child: Container(
                  width: 335.0,
                  height: 294.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6.0,
                        color: Color(0x10000000),
                        offset: Offset(0.0, 3.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'vqdcf0z5' /* English */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SF Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Color(0xFF888888),
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue1 ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxValue1 = newValue!);
                                      if (newValue!) {
                                        setAppLanguage(context, 'en');
                                        context.safePop();
                                      }
                                    },
                                    activeColor: Color(0xFFEB2020),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            indent: 15.0,
                            endIndent: 15.0,
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      's06i4imc' /* Español */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                      ),
                                      unselectedWidgetColor: Color(0xFF888888),
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxValue2 ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue2 = newValue!);
                                        if (newValue!) {
                                          setAppLanguage(context, 'es');
                                          context.safePop();
                                        }
                                      },
                                      activeColor: Color(0xFFEB2020),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'zbx256ok' /* Spanish */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              indent: 15.0,
                              endIndent: 15.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'aka00xbz' /* 한국어 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                      ),
                                      unselectedWidgetColor: Color(0xFF888888),
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxValue3 ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue3 = newValue!);
                                        if (newValue!) {
                                          setAppLanguage(context, 'ko');
                                          context.safePop();
                                        }
                                      },
                                      activeColor: Color(0xFFEB2020),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'mziiaxjp' /* Korean */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              indent: 15.0,
                              endIndent: 15.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'almk6kyp' /* 日本語 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                      ),
                                      unselectedWidgetColor: Color(0xFF888888),
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxValue4 ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue4 = newValue!);
                                        if (newValue!) {
                                          setAppLanguage(context, 'ja');
                                          context.safePop();
                                        }
                                      },
                                      activeColor: Color(0xFFEB2020),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'byxw0yxd' /* Japanese */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: Color(0xFF767676),
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 139.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Home');
                  },
                  text: FFLocalizations.of(context).getText(
                    '7710qjew' /* Save */,
                  ),
                  options: FFButtonOptions(
                    width: 220.0,
                    height: 52.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFEB2020),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'SF Pro',
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
