import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkboxes_option_model.dart';
export 'checkboxes_option_model.dart';

class CheckboxesOptionWidget extends StatefulWidget {
  const CheckboxesOptionWidget({
    Key? key,
    this.titleName,
  }) : super(key: key);

  final String? titleName;

  @override
  _CheckboxesOptionWidgetState createState() => _CheckboxesOptionWidgetState();
}

class _CheckboxesOptionWidgetState extends State<CheckboxesOptionWidget> {
  late CheckboxesOptionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckboxesOptionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('Manage_addfielddefault');
    });

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
          child: SingleChildScrollView(
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
                            'eyh012dp' /* Checkboxes */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'fh6xv6dr' /* Field ID : 08 */,
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
                                      '98jlexxy' /* Field Type : Checkboxes */,
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
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 13.0),
                          child: Container(
                            width: double.infinity,
                            height: 125.0,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '556vxhro' /* Field Title */,
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
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'nt5mtu1e' /* Checkbox */,
                                              ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            Color(0xFF767676),
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
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
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(
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
                                            validator: _model
                                                .emailAddressControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 13.0, 0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/outline-check_box-24px.svg',
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
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Container(
                          height: 211.0,
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 18.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '48mgjiy2' /* Field Options */,
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 22.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 9.0, 0.0),
                                            child: Icon(
                                              Icons.crop_square_rounded,
                                              color: Color(0xFFAFAFAF),
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'esd4a4o8' /* Option 1 */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        icon: Icon(
                                          Icons.close,
                                          color: FlutterFlowTheme.of(context)
                                              .black600,
                                          size: 20.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 9.0, 0.0),
                                          child: Icon(
                                            Icons.crop_square_rounded,
                                            color: Color(0xFFAFAFAF),
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '67pfiyz2' /* Other */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ],
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.close,
                                        color: FlutterFlowTheme.of(context)
                                            .black600,
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 9.0, 0.0),
                                          child: Icon(
                                            Icons.crop_square_rounded,
                                            color: Color(0xFFAFAFAF),
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'uweo6nfg' /* Add option  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ],
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.close,
                                        color: FlutterFlowTheme.of(context)
                                            .black600,
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: 264.0,
                            height: 29.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'oalbmxfx' /* REQUIRED : */,
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
                                          '6luf4lxu' /* DISABLE : */,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
