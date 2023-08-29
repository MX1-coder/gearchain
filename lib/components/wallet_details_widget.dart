import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wallet_details_model.dart';
export 'wallet_details_model.dart';

class WalletDetailsWidget extends StatefulWidget {
  const WalletDetailsWidget({Key? key}) : super(key: key);

  @override
  _WalletDetailsWidgetState createState() => _WalletDetailsWidgetState();
}

class _WalletDetailsWidgetState extends State<WalletDetailsWidget> {
  late WalletDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WalletDetailsModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 230.0),
      child: Container(
        width: 400.0,
        height: 500.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(14.0),
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
                    Text(
                      FFLocalizations.of(context).getText(
                        'h7y53g22' /* Wallet Details */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'SF Pro',
                                fontSize: 17.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: false,
                              ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 20.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'ju5o14n6' /* These are your wallet details.... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SF Pro',
                        color: Color(0xFF888888),
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      thickness: 1.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '1b5m76io' /* Copy wallet address */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro',
                              color: Color(0xFF015A89),
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ms1u6695' /* Copy private key */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro',
                              color: Color(0xFF015A89),
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'swjac7jz' /* Copy 12 word secret phrase */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro',
                              color: Color(0xFF015A89),
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
