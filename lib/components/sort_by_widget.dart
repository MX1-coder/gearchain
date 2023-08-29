import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sort_by_model.dart';
export 'sort_by_model.dart';

class SortByWidget extends StatefulWidget {
  const SortByWidget({
    Key? key,
    this.quantity,
  }) : super(key: key);

  final int? quantity;

  @override
  _SortByWidgetState createState() => _SortByWidgetState();
}

class _SortByWidgetState extends State<SortByWidget> {
  late SortByModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SortByModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'x3yc5nol' /* CANCEL */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'SF Pro',
                                color: Color(0xFFEB2020),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: false,
                              ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'z7k3720e' /* Sort by */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SF Pro',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().sortByUpdateCount = _model.lowStockValue!;
                        FFAppState().sortByLastUpdated = _model.checkboxValue!;
                        FFAppState().sortByBarcode = _model.barcodeValue!;
                        FFAppState().sortByName = _model.nameValue!;
                        FFAppState().sortByDate = _model.dateValue!;
                        FFAppState().sortByQuanity = _model.quantityValue!;
                        FFAppState().sortByCatogory = _model.categoryValue!;
                      });
                      Navigator.pop(context);
                      if (_model.lowStockValue!) {
                        context.pushNamed(
                          'Product_sortList',
                          queryParameters: {
                            'daTeinString': serializeParam(
                              '',
                              ParamType.String,
                            ),
                            'quantity': serializeParam(
                              widget.quantity,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        context.pushNamed('Product_search');
                      }
                    },
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '4gtrx4yu' /* DONE */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SF Pro',
                            color: Color(0xFFEB2020),
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(35.0, 0.0, 35.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      thickness: 1.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'my3noppj' /* Last Updated */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro',
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0x7DF5F5F5),
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue ??= true,
                            onChanged: (newValue) async {
                              setState(() => _model.checkboxValue = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).btnText,
                            checkColor: Color(0xFFEB2020),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'x0ioeiaw' /* Barcode */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro',
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0x7DF5F5F5),
                          ),
                          child: Checkbox(
                            value: _model.barcodeValue ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.barcodeValue = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).btnText,
                            checkColor: Color(0xFFEB2020),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'y3o96ld8' /* Name */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro',
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0x7DF5F5F5),
                          ),
                          child: Checkbox(
                            value: _model.nameValue ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.nameValue = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).btnText,
                            checkColor: Color(0xFFEB2020),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'p2xjtdl5' /* Date */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro',
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0x7DF5F5F5),
                          ),
                          child: Checkbox(
                            value: _model.dateValue ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.dateValue = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).btnText,
                            checkColor: Color(0xFFEB2020),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'w2qkvhxo' /* Quantity */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro',
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0x7DF5F5F5),
                          ),
                          child: Checkbox(
                            value: _model.quantityValue ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.quantityValue = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).btnText,
                            checkColor: Color(0xFFEB2020),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'tgxd2opp' /* Category */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro',
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0x7DF5F5F5),
                          ),
                          child: Checkbox(
                            value: _model.categoryValue ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.categoryValue = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).btnText,
                            checkColor: Color(0xFFEB2020),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '6awo2aou' /* Low Stock */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro',
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0x7DF5F5F5),
                          ),
                          child: Checkbox(
                            value: _model.lowStockValue ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.lowStockValue = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).btnText,
                            checkColor: Color(0xFFEB2020),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
