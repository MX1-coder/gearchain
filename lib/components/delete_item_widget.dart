import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delete_item_model.dart';
export 'delete_item_model.dart';

class DeleteItemWidget extends StatefulWidget {
  const DeleteItemWidget({Key? key}) : super(key: key);

  @override
  _DeleteItemWidgetState createState() => _DeleteItemWidgetState();
}

class _DeleteItemWidgetState extends State<DeleteItemWidget> {
  late DeleteItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteItemModel());
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
      child: StreamBuilder<List<ProductRecord>>(
        stream: queryProductRecord(
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
          List<ProductRecord> bottomSheetMaterialProductRecordList =
              snapshot.data!;
          // Return an empty Container when the item does not exist.
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final bottomSheetMaterialProductRecord =
              bottomSheetMaterialProductRecordList.isNotEmpty
                  ? bottomSheetMaterialProductRecordList.first
                  : null;
          return Container(
            width: 380.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(14.0),
              shape: BoxShape.rectangle,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 12.0, 15.0, 24.0),
              child: Column(
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.trash,
                            color: Colors.black,
                            size: 20.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 12.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'g8qks2pt' /* DELETE */,
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
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 30.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '3qy6mg2s' /* Are you sure your want to dele... */,
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
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              await bottomSheetMaterialProductRecord!.reference
                                  .delete();

                              context.pushNamed('manage_form');
                            },
                            text: FFLocalizations.of(context).getText(
                              'u5ye3sb3' /* Delete */,
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
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: FFLocalizations.of(context).getText(
                              'gmyh2tyu' /* Cancel */,
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
                      ].divide(SizedBox(width: 10.0)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
