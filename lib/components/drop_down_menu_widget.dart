import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drop_down_menu_model.dart';
export 'drop_down_menu_model.dart';

class DropDownMenuWidget extends StatefulWidget {
  const DropDownMenuWidget({
    Key? key,
    this.titleName,
  }) : super(key: key);

  final String? titleName;

  @override
  _DropDownMenuWidgetState createState() => _DropDownMenuWidgetState();
}

class _DropDownMenuWidgetState extends State<DropDownMenuWidget> {
  late DropDownMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropDownMenuModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          curve: Curves.bounceOut,
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 1.0),
              )
            ],
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(
              color: Color(0x00EDEFEC),
              width: 1.0,
            ),
          ),
          child: Container(
            height: 750.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                28.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'rmrctpx0' /* Reset */,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro',
                                    color: Color(0xFFEB2020),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '0wbkcaqr' /* Select Form Fields to Add */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.1),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 28.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'Manage_addfielddefault',
                                  queryParameters: {
                                    'barcode': serializeParam(
                                      _model.barcodeValue,
                                      ParamType.bool,
                                    ),
                                    'timeStamp': serializeParam(
                                      _model.timestampValue,
                                      ParamType.bool,
                                    ),
                                    'nAme': serializeParam(
                                      FFAppState().formName,
                                      ParamType.bool,
                                    ),
                                    'sTock': serializeParam(
                                      _model.stocksValueValue,
                                      ParamType.bool,
                                    ),
                                    'iMage': serializeParam(
                                      _model.imagesValue,
                                      ParamType.bool,
                                    ),
                                    'dropDown': serializeParam(
                                      _model.dropdownValue,
                                      ParamType.bool,
                                    ),
                                    'pAragraph': serializeParam(
                                      _model.paragraphValue,
                                      ParamType.bool,
                                    ),
                                    'rAdioButton': serializeParam(
                                      _model.radioButtonValue,
                                      ParamType.bool,
                                    ),
                                    'gpsCordinates': serializeParam(
                                      _model.gPSCoOrdinatesValue,
                                      ParamType.bool,
                                    ),
                                    'sEcondaryBarcode': serializeParam(
                                      _model.secondaryBarcodeValue,
                                      ParamType.bool,
                                    ),
                                    'hIdden': serializeParam(
                                      _model.hiddenValue,
                                      ParamType.bool,
                                    ),
                                    'dAte': serializeParam(
                                      _model.dateValue,
                                      ParamType.bool,
                                    ),
                                    'sHortAnswer': serializeParam(
                                      _model.shortAnswerValue,
                                      ParamType.bool,
                                    ),
                                    'tags': serializeParam(
                                      _model.tagValue,
                                      ParamType.bool,
                                    ),
                                    'price': serializeParam(
                                      _model.priceValue,
                                      ParamType.bool,
                                    ),
                                    'webLinks': serializeParam(
                                      _model.webLinksValue,
                                      ParamType.bool,
                                    ),
                                    'numBerCount': serializeParam(
                                      _model.numberCountValue,
                                      ParamType.bool,
                                    ),
                                    'titleName': serializeParam(
                                      widget.titleName,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );

                                FFAppState().update(() {
                                  FFAppState().formBarcode =
                                      _model.barcodeValue!;
                                  FFAppState().timeStamp =
                                      _model.timestampValue!;
                                  FFAppState().formDate = _model.dateValue!;
                                  FFAppState().formParagraph =
                                      _model.paragraphValue!;
                                  FFAppState().formDropDown =
                                      _model.dropdownValue!;
                                  FFAppState().formCheckboxes =
                                      _model.checkBoxesValue!;
                                  FFAppState().formNumberCount =
                                      _model.numberCountValue!;
                                  FFAppState().formRadiobutton =
                                      _model.radioButtonValue!;
                                  FFAppState().formGPSCoOrdinates =
                                      _model.gPSCoOrdinatesValue!;
                                  FFAppState().formSecondaryBarcode =
                                      _model.secondaryBarcodeValue!;
                                  FFAppState().formHidden = _model.hiddenValue!;
                                  FFAppState().formTag = _model.tagValue!;
                                  FFAppState().formImages = _model.imagesValue!;
                                  FFAppState().formStock = _model.imagesValue!;
                                  FFAppState().formPrice = _model.priceValue!;
                                  FFAppState().formWebLinks =
                                      _model.webLinksValue!;
                                });
                              },
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'm3twf2zh' /* Done */,
                                ),
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro',
                                      color: Color(0xFFEB2020),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 5.0)),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).border,
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.barcodeValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.barcodeValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BBarcode,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '51m9zdan' /* Barcode */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.timestampValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.timestampValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BTime,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9bith3fv' /* TimeStamp */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.dateValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(
                                            () => _model.dateValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall234DateB,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'zr72mclx' /* Date */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.shortAnswerValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() => _model.shortAnswerValue =
                                            newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BName,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'yfwifvff' /* Name */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.paragraphValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.paragraphValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BParagraph,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '14nzyf43' /* Paragraph */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.dropdownValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.dropdownValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BDropdown,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ygaf7n5i' /* Drop Down */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkBoxesValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.checkBoxesValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall236CheckboxB,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rmc3ls5j' /* Check Boxes */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.numberCountValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() => _model.numberCountValue =
                                            newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons
                                                .kgearAllIconForIconmoonBNumber,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'c917y0vf' /* Number Count */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.radioButtonValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() => _model.radioButtonValue =
                                            newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BRadio,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'y9bmul75' /* Radio Button */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.gPSCoOrdinatesValue ??=
                                          false,
                                      onChanged: (newValue) async {
                                        setState(() => _model
                                            .gPSCoOrdinatesValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BGps,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9rvdscin' /* GPS-Co Ordinates */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.secondaryBarcodeValue ??=
                                          false,
                                      onChanged: (newValue) async {
                                        setState(() => _model
                                            .secondaryBarcodeValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BBarcode,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '116hr3vq' /* Secondary Barcode */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.hiddenValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.hiddenValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BHidden,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'by3pgrji' /* Hidden */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.imagesValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.imagesValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BImage,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '1bbn7e5s' /* Images */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.stocksValueValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() => _model.stocksValueValue =
                                            newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BStock,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'igmdmpgw' /* Stock */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.tagValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(
                                            () => _model.tagValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall231TagB,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '0uqjjvg1' /* Tag */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.priceValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.priceValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall2BPrice,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'emil536f' /* Price */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 18.0,
                                  height: 18.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                    child: Checkbox(
                                      value: _model.webLinksValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.webLinksValue = newValue!);
                                      },
                                      activeColor: Color(0xFFB29173),
                                      checkColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.kall233WebB,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            size: 17.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '56m2jc7i' /* Web Links */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
