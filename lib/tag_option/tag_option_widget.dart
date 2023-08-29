import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tag_option_model.dart';
export 'tag_option_model.dart';

class TagOptionWidget extends StatefulWidget {
  const TagOptionWidget({
    Key? key,
    this.titleName,
  }) : super(key: key);

  final String? titleName;

  @override
  _TagOptionWidgetState createState() => _TagOptionWidgetState();
}

class _TagOptionWidgetState extends State<TagOptionWidget> {
  late TagOptionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagOptionModel());

    _model.emailAddressController ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'm7sb4eei' /* Tag */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
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
                                      'srzs0fkk' /* Field ID : 20 */,
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
                                      'y6vp5jmc' /* Field Type : Tag */,
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
                                    'sksfeabx' /* Field Title */,
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
                                  constraints: BoxConstraints(
                                    maxWidth: 300.0,
                                    maxHeight: 45.0,
                                  ),
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
                                              'm1h69t2u' /* Tag */,
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
                                          validator: _model
                                              .emailAddressControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/outline-local_offer-24px.svg',
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
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 10.0),
                          child: Container(
                            width: double.infinity,
                            height: 322.0,
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
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).appBar,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController2,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'ljp4grxi' /* Search Tags */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'SF Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      useGoogleFonts: false,
                                                    ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            prefixIcon: Icon(
                                              Icons.search,
                                              size: 18.0,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .black600,
                                                useGoogleFonts: false,
                                              ),
                                          validator: _model
                                              .textController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 22.0, 0.0),
                                        child: SvgPicture.asset(
                                          Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? 'assets/images/all_w_tag.svg'
                                              : 'assets/images/outline-local_offer-24px.svg',
                                          width: 20.0,
                                          height: 20.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 30.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'wxaaapet' /* Hello World */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 24.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 20.0,
                                  thickness: 1.0,
                                  indent: 20.0,
                                  endIndent: 20.0,
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '1x1aqhyx' /* Hello World */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 24.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 20.0,
                                  thickness: 1.0,
                                  indent: 20.0,
                                  endIndent: 20.0,
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'yn7xvcyn' /* Hello World */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 24.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 20.0,
                                  thickness: 1.0,
                                  indent: 20.0,
                                  endIndent: 20.0,
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'y7w3u2i3' /* Hello World */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 24.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 20.0,
                                  thickness: 1.0,
                                  indent: 20.0,
                                  endIndent: 20.0,
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'wre4h7q9' /* Add Option */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 12.0,
                                              useGoogleFonts: false,
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
                        child: Container(
                          width: 264.0,
                          height: 29.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
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
                                        'an9ascn4' /* REQUIRED : */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
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
                                          setState(() =>
                                              _model.switchValue1 = newValue!);
                                        },
                                        activeColor: Color(0x00000061),
                                        activeTrackColor: Color(0xFF95948C),
                                        inactiveTrackColor: Color(0xFFEB2020),
                                        inactiveThumbColor:
                                            FlutterFlowTheme.of(context)
                                                .btnText,
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
                                        '1womr81u' /* DISABLE : */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
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
                                          setState(() =>
                                              _model.switchValue2 = newValue!);
                                        },
                                        activeColor: Color(0x00000061),
                                        activeTrackColor: Color(0xFFEB2020),
                                        inactiveTrackColor: Color(0xFF95948C),
                                        inactiveThumbColor:
                                            FlutterFlowTheme.of(context)
                                                .btnText,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().update(() {
                                    FFAppState().formTag = false;
                                  });

                                  context.pushNamed(
                                    'Manage_addfielddefault',
                                    queryParameters: {
                                      'titleName': serializeParam(
                                        widget.titleName,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: SvgPicture.asset(
                                  'assets/images/Iconly-Light-Outline-Delete_(1).svg',
                                  width: 18.5,
                                  height: 20.0,
                                  fit: BoxFit.cover,
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
    );
  }
}
