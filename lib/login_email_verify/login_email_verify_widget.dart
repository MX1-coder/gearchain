import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_email_verify_model.dart';
export 'login_email_verify_model.dart';

class LoginEmailVerifyWidget extends StatefulWidget {
  const LoginEmailVerifyWidget({
    Key? key,
    String? admin,
  })  : this.admin = admin ?? 'admin',
        super(key: key);

  final String admin;

  @override
  _LoginEmailVerifyWidgetState createState() => _LoginEmailVerifyWidgetState();
}

class _LoginEmailVerifyWidgetState extends State<LoginEmailVerifyWidget> {
  late LoginEmailVerifyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginEmailVerifyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      GoRouter.of(context).prepareAuthEvent();
      final smsCodeVal = currentUserEmail;
      if (smsCodeVal == null || smsCodeVal.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Enter SMS verification code.'),
          ),
        );
        return;
      }
      final phoneVerifiedUser = await authManager.verifySmsCode(
        context: context,
        smsCode: smsCodeVal,
      );
      if (phoneVerifiedUser == null) {
        return;
      }

      if (currentUserEmailVerified) {
        context.pushNamedAuth('Login_new_password', context.mounted);
      } else {
        return;
      }
    });
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.chevron_left,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(45.0, 70.0, 45.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '6kqwjmyl' /* Email Verify */,
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 114.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'vb0ul8lp' /* Check the email you’ll get the... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro',
                                    color: Color(0xFF767676),
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        PinCodeTextField(
                          autoDisposeControllers: false,
                          appContext: context,
                          length: 4,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'SF Pro',
                                    color: Color(0xFFF44747),
                                    useGoogleFonts: false,
                                  ),
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          enableActiveFill: true,
                          autoFocus: true,
                          enablePinAutofill: true,
                          errorTextSpace: 16.0,
                          showCursor: true,
                          cursorColor: Color(0xFFF44747),
                          obscureText: false,
                          pinTheme: PinTheme(
                            fieldHeight: 50.0,
                            fieldWidth: 50.0,
                            borderWidth: 20.0,
                            borderRadius: BorderRadius.circular(1.0),
                            shape: PinCodeFieldShape.underline,
                            activeColor: Colors.white,
                            inactiveColor: Colors.white,
                            selectedColor: Colors.white,
                            activeFillColor: Colors.white,
                            inactiveFillColor: Colors.white,
                            selectedFillColor: Colors.white,
                          ),
                          controller: _model.pinCodeController,
                          onChanged: (_) {},
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: _model.pinCodeControllerValidator
                              .asValidator(context),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'uj4hfzvc' /* Don’t receive the code? */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro',
                                      color: Color(0xFF888888),
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Login_forgot_password');
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'e2vffvob' /* Resend code */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: Color(0xFFEB2020),
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 86.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              GoRouter.of(context).prepareAuthEvent();
                              final smsCodeVal = _model.pinCodeController!.text;
                              if (smsCodeVal == null || smsCodeVal.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Enter SMS verification code.'),
                                  ),
                                );
                                return;
                              }
                              final phoneVerifiedUser =
                                  await authManager.verifySmsCode(
                                context: context,
                                smsCode: smsCodeVal,
                              );
                              if (phoneVerifiedUser == null) {
                                return;
                              }

                              context.pushNamedAuth('Login', context.mounted);
                            },
                            text: FFLocalizations.of(context).getText(
                              's72mp9ta' /* Verify */,
                            ),
                            options: FFButtonOptions(
                              width: 220.0,
                              height: 52.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFEB2020),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
