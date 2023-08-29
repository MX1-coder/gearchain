import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'confirm_plan_pro_plus_model.dart';
export 'confirm_plan_pro_plus_model.dart';

class ConfirmPlanProPlusWidget extends StatefulWidget {
  const ConfirmPlanProPlusWidget({Key? key}) : super(key: key);

  @override
  _ConfirmPlanProPlusWidgetState createState() =>
      _ConfirmPlanProPlusWidgetState();
}

class _ConfirmPlanProPlusWidgetState extends State<ConfirmPlanProPlusWidget> {
  late ConfirmPlanProPlusModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmPlanProPlusModel());
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.chevron_left_sharp,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 100.0,
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).btnText,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6.0,
                                  color: Color(0x1A000000),
                                  offset: Offset(0.0, 3.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    FFLocalizations.of(context).getText(
                                      '79ri3r29' /* 5000 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .background,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  )),
                                  Icon(
                                    Icons.add_circle_outlined,
                                    color: Color(0xFFEB2020),
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/Mask_Group_8.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.75, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'jt2il1p3' /* Confirm Plan */,
                      ),
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'SF Pro',
                            color: FlutterFlowTheme.of(context).secondary,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).whiteBack,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          30.0, 20.0, 20.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'dx8fk06j' /* Billing cycle */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 18.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 9.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'l6uetvnq' /* Choose often you would like to... */,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro',
                                    color: FlutterFlowTheme.of(context).accent2,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 155.7,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).whiteBack,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Color(0xFFC5C5C5),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: FlutterFlowRadioButton(
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3a524h0x' /* Yearly ($20 / Month)
Pay $240 ... */
                                                      ,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pk4bw2ym' /* Monthly ($29 / Month)
Pay $29 ... */
                                                      ,
                                                    )
                                                  ].toList(),
                                                  onChanged: (val) =>
                                                      setState(() {}),
                                                  controller: _model
                                                          .radioButtonValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  optionHeight: 60.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black600,
                                                        fontSize: 14.0,
                                                      ),
                                                  selectedTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'SF Pro',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .black600,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                  textPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(2.0, 0.0,
                                                              0.0, 0.0),
                                                  buttonPosition:
                                                      RadioButtonPosition.left,
                                                  direction: Axis.vertical,
                                                  radioButtonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                  inactiveRadioButtonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .grayIcon,
                                                  toggleable: false,
                                                  horizontalAlignment:
                                                      WrapAlignment.start,
                                                  verticalAlignment:
                                                      WrapCrossAlignment.start,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  1.0, 20.0, 1.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEB2020),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 5.0, 5.0, 5.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'hsvjer5p' /* Recommend */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .btnText,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
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
                          Align(
                            alignment: AlignmentDirectional(0.0, -0.93),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: Container(
                                width: 300.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFB29173),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ps7tdmfm' /* Confirm Billing Cycle */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SF Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .whiteBack,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
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
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 90.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: double.infinity,
                    ),
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).appBarLight,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 6.0,
                                    color: Color(0x10000000),
                                    offset: Offset(0.0, -3.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              alignment: AlignmentDirectional(0.0, 1.0),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                        Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? 'assets/images/navigation-02.svg'
                                            : 'assets/images/icon_all-04.svg',
                                        width: 18.9,
                                        height: 20.0,
                                        fit: BoxFit.cover,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '23eejhaf' /* Home */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconColor,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? 'assets/images/navigation-01.svg'
                                              : 'assets/images/Group_734.svg',
                                          width: 18.9,
                                          height: 20.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: SelectionArea(
                                            child: Text(
                                          FFLocalizations.of(context).getText(
                                            'doldt0yf' /* Products */,
                                          ),
                                          style: TextStyle(
                                            color: Color(0xFFEB2020),
                                            fontSize: 12.0,
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 25.0),
                                          child: Container(
                                            width: 60.0,
                                            height: 60.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEB2020),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Stack(
                                                alignment: AlignmentDirectional(
                                                    0.0, -0.0),
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 45.0,
                                                      icon: Icon(
                                                        FFIcons.kscan,
                                                        color: Colors.white,
                                                        size: 20.0,
                                                      ),
                                                      onPressed: () {
                                                        print(
                                                            'IconButton pressed ...');
                                                      },
                                                    ),
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
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                        Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? 'assets/images/navigation-03.svg'
                                            : 'assets/images/icon_all-05.svg',
                                        width: 18.9,
                                        height: 20.0,
                                        fit: BoxFit.cover,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'n3taicm2' /* Report */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconColor,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                        Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? 'assets/images/navigation-04.svg'
                                            : 'assets/images/icon_all-06.svg',
                                        width: 18.7,
                                        height: 20.0,
                                        fit: BoxFit.cover,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'hk10bkwk' /* Notification */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconColor,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
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
            ),
          ],
        ),
      ),
    );
  }
}
