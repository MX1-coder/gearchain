import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'alert01_model.dart';
export 'alert01_model.dart';

class Alert01Widget extends StatefulWidget {
  const Alert01Widget({Key? key}) : super(key: key);

  @override
  _Alert01WidgetState createState() => _Alert01WidgetState();
}

class _Alert01WidgetState extends State<Alert01Widget> {
  late Alert01Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Alert01Model());
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
      width: 200.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        FFLocalizations.of(context).getText(
          'zbr05n6o' /* Give  admin permissions to thi... */,
        ),
        textAlign: TextAlign.center,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'SF Pro',
              color: FlutterFlowTheme.of(context).primaryBtnText,
              fontSize: 14.0,
              useGoogleFonts: false,
            ),
      ),
    );
  }
}
