import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_field_done_model.dart';
export 'add_field_done_model.dart';

class AddFieldDoneWidget extends StatefulWidget {
  const AddFieldDoneWidget({Key? key}) : super(key: key);

  @override
  _AddFieldDoneWidgetState createState() => _AddFieldDoneWidgetState();
}

class _AddFieldDoneWidgetState extends State<AddFieldDoneWidget> {
  late AddFieldDoneModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddFieldDoneModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 300.0),
      child: Container(
        width: 400.0,
        height: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/icon_done_(1).png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'un6up2am' /* Your form has been updated! */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SF Pro',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
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
