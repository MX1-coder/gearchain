import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'current_user_option_model.dart';
export 'current_user_option_model.dart';

class CurrentUserOptionWidget extends StatefulWidget {
  const CurrentUserOptionWidget({Key? key}) : super(key: key);

  @override
  _CurrentUserOptionWidgetState createState() =>
      _CurrentUserOptionWidgetState();
}

class _CurrentUserOptionWidgetState extends State<CurrentUserOptionWidget> {
  late CurrentUserOptionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CurrentUserOptionModel());

    _model.emailAddressController ??= TextEditingController();
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 26.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'lgwpoaoo' /* Current User */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 10.0),
                        child: Container(
                          width: double.infinity,
                          height: 99.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6.0,
                                color: Color(0x0000000F),
                                offset: Offset(0.0, 3.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'ac7f69b2' /* Field ID : 17 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SF Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'wnirz320' /* Field Type : Email */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SF Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 125.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Color(0x0000000F),
                              offset: Offset(0.0, 3.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'l1z2r0ua' /* Field Title */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Container(
                                width: 300.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    color: Color(0xFFD3D3D3),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller:
                                            _model.emailAddressController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '2wa46dq0' /* Current User */,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFF44747),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFF44747),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFFF5F5F5),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 20.0, 0.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFF767676),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        maxLines: null,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: _model
                                            .emailAddressControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 13.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/profile_g_white-profile.svg',
                                        width: 20.0,
                                        height: 20.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          width: 264.0,
                          height: 29.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '07yat37s' /* REQUIRED : */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grayIcon,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Expanded(
                                        child: Switch(
                                          value: _model.switchValue1 ??= false,
                                          onChanged: (newValue) async {
                                            setState(() => _model.switchValue1 =
                                                newValue!);
                                          },
                                          activeColor: Color(0x00000061),
                                          activeTrackColor: Color(0xFF95948C),
                                          inactiveTrackColor: Color(0xFFEB2020),
                                          inactiveThumbColor:
                                              Colors.transparent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 21.0,
                                  child: VerticalDivider(
                                    thickness: 1.0,
                                    color: Color(0xFFD3D3D3),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'eaxgw2q5' /* DISABLE : */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grayIcon,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Expanded(
                                        child: Switch(
                                          value: _model.switchValue2 ??= false,
                                          onChanged: (newValue) async {
                                            setState(() => _model.switchValue2 =
                                                newValue!);
                                          },
                                          activeColor: Color(0x00000061),
                                          activeTrackColor: Color(0xFFEB2020),
                                          inactiveTrackColor: Color(0xFF95948C),
                                          inactiveThumbColor:
                                              Colors.transparent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/Iconly-Light-Outline-Delete_(1).svg',
                                  width: 18.5,
                                  height: 20.0,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
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
