import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'alert03_model.dart';
export 'alert03_model.dart';

class Alert03Widget extends StatefulWidget {
  const Alert03Widget({Key? key}) : super(key: key);

  @override
  _Alert03WidgetState createState() => _Alert03WidgetState();
}

class _Alert03WidgetState extends State<Alert03Widget> {
  late Alert03Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Alert03Model());
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
          'iisgmgl5' /* Give  viwer permissions to thi... */,
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
