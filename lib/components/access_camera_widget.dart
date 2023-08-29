import 'package:gearchain/manual_entry_add_items_with_barcod/manual_entry_add_items_with_barcod_widget.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'access_camera_model.dart';
export 'access_camera_model.dart';

class AccessCameraWidget extends StatefulWidget {
  const AccessCameraWidget({
    Key? key,
    this.formName,
    this.barcode,
    this.timeStamp,
    this.name,
    this.stock,
    this.image,
    this.dropDown,
    this.paragraph,
    this.radioButton,
    this.gpsCo,
    this.secondaryBarcode,
    this.hidden,
    this.date,
    this.shortAnswer,
    this.tag,
    this.price,
    this.weblinks,
    this.numberCount,
    this.email,
    this.selectedformAdmin,
    this.selectedFormStaff,
    this.selectedDropDownStaff,
    this.catoGory,
    this.dropDownAdmin,
  }) : super(key: key);

  final String? formName;
  final bool? barcode;
  final bool? timeStamp;
  final bool? name;
  final bool? stock;
  final bool? image;
  final bool? dropDown;
  final bool? paragraph;
  final bool? radioButton;
  final bool? gpsCo;
  final bool? secondaryBarcode;
  final bool? hidden;
  final bool? date;
  final bool? shortAnswer;
  final bool? tag;
  final bool? price;
  final bool? weblinks;
  final bool? numberCount;
  final String? email;
  final String? selectedformAdmin;
  final String? selectedFormStaff;
  final String? selectedDropDownStaff;
  final String? catoGory;
  final String? dropDownAdmin;

  @override
  _AccessCameraWidgetState createState() => _AccessCameraWidgetState();
}

class _AccessCameraWidgetState extends State<AccessCameraWidget> {
  late AccessCameraModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccessCameraModel());
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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 380.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 24.0),
          child: StreamBuilder<List<UpdatedCountRecord>>(
            stream: queryUpdatedCountRecord(
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
              List<UpdatedCountRecord> columnUpdatedCountRecordList =
                  snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final columnUpdatedCountRecord =
                  columnUpdatedCountRecordList.isNotEmpty
                      ? columnUpdatedCountRecordList.first
                      : null;
              return Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'vjz86udo' /* ACCESS CAMERA */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'SF Pro',
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 30.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '1jeu5m3z' /* “GearChain” Would like to acce... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SF Pro',
                            color: FlutterFlowTheme.of(context).gray600,
                            fontSize: 13.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: FFLocalizations.of(context).getText(
                              '43bbrrk5' /* Don't Allow */,
                            ),
                            options: FFButtonOptions(
                              width: 130.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'SF Pro',
                                    color: Color(0xFFE85353),
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: StreamBuilder<List<FormsDataRecord>>(
                            stream: queryFormsDataRecord(
                              queryBuilder: (formsDataRecord) => formsDataRecord
                                  .where('owner', isEqualTo: currentUserEmail),
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
                                        FlutterFlowTheme.of(context)
                                            .customColor3,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<FormsDataRecord> buttonFormsDataRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final buttonFormsDataRecord =
                                  buttonFormsDataRecordList.isNotEmpty
                                      ? buttonFormsDataRecordList.first
                                      : null;
                              return FFButtonWidget(
                                onPressed: () async {
                                  await buttonFormsDataRecord!.reference
                                      .update({
                                    'updateScanerCount':
                                        FieldValue.increment(1),
                                  });

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => qrcodeScanner(),
                                      settings: RouteSettings(
                                        name: 'qrcodeScanner',
                                        arguments: {
                                          'formName': serializeParam(
                                            widget.formName,
                                            ParamType.String,
                                          ),
                                          // 'qrCode': serializeParam(
                                          //   widget.qrCode,
                                          //   ParamType.String,
                                          // ),
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
                                            widget.paragraph,
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
                                            widget.date,
                                            ParamType.bool,
                                          ),
                                          'price': serializeParam(
                                            widget.price,
                                            ParamType.bool,
                                          ),
                                          'webLinks': serializeParam(
                                            widget.weblinks,
                                            ParamType.bool,
                                          ),
                                          'numberCount': serializeParam(
                                            widget.numberCount,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      ),
                                    ),
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  '7ip8t7ng' /* Ok */,
                                ),
                                options: FFButtonOptions(
                                  width: 130.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'SF Pro',
                                        color: Color(0xFFE85353),
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                      ),
                                  elevation: 2.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              );
                            },
                          ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
