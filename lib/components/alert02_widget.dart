import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'alert02_model.dart';
export 'alert02_model.dart';

class Alert02Widget extends StatefulWidget {
  const Alert02Widget({Key? key}) : super(key: key);

  @override
  _Alert02WidgetState createState() => _Alert02WidgetState();
}

class _Alert02WidgetState extends State<Alert02Widget> {
  late Alert02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Alert02Model());
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
          '1zi5fpky' /* Give  user permissions to this... */,
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
