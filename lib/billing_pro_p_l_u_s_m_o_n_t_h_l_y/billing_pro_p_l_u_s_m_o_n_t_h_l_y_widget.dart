import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/components/replace_credit_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'billing_pro_p_l_u_s_m_o_n_t_h_l_y_model.dart';
export 'billing_pro_p_l_u_s_m_o_n_t_h_l_y_model.dart';

class BillingProPLUSMONTHLYWidget extends StatefulWidget {
  const BillingProPLUSMONTHLYWidget({
    Key? key,
    this.totalprice,
    this.selectedPrice,
  }) : super(key: key);

  final String? totalprice;
  final String? selectedPrice;

  @override
  _BillingProPLUSMONTHLYWidgetState createState() =>
      _BillingProPLUSMONTHLYWidgetState();
}

class _BillingProPLUSMONTHLYWidgetState
    extends State<BillingProPLUSMONTHLYWidget> {
  late BillingProPLUSMONTHLYModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BillingProPLUSMONTHLYModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 30.0,
            icon: Icon(
              Icons.chevron_left,
              color: FlutterFlowTheme.of(context).secondary,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                StreamBuilder<List<CardsRecord>>(
                  stream: queryCardsRecord(
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).customColor3,
                            ),
                          ),
                        ),
                      );
                    }
                    List<CardsRecord> columnCardsRecordList = snapshot.data!;
                    final columnCardsRecord = columnCardsRecordList.isNotEmpty
                        ? columnCardsRecordList.first
                        : null;
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.8, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 20.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'mdjp94np' /* Billing */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'SF Pro',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.84, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'trgadfr1' /* Payment Methods */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.55, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 9.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'sa1ezacm' /* Mangage how you pay your bills... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro',
                                    color: FlutterFlowTheme.of(context).accent2,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 9.0),
                          child: Container(
                            width: double.infinity,
                            height: 200.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.8, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 0.0, 22.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '25bfprp9' /* Default Payment Methods */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Container(
                                          width: 40.0,
                                          height: 25.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD3D3D3),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            border: Border.all(
                                              color: Color(0xFF707070),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 200.0,
                                        height: 42.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'gu0z8bop' /* Visa */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 70.0,
                                                      height: 20.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFEB2020),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'x6gabw02' /* Primary */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .whiteBack,
                                                                fontSize: 12.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'zsckzod0' /* ending with 2022 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 13.0,
                                                        fontWeight:
                                                            FontWeight.normal,
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
                                Align(
                                  alignment: AlignmentDirectional(-0.65, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.black,
                                          barrierColor: Color(0x3A101213),
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height: 600.0,
                                                  child:
                                                      ReplaceCreditCardWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ilzp22lb' /* Replace payment methods */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFFEB2020),
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 15.0),
                                  child: Container(
                                    width: 250.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).btnText,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: Color(0xFFEB2020),
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/GearChain-symbol-logo_(1).png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'ay7o4hc1' /* Buy GEGA Credit */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .background,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        StreamBuilder<List<PaymentRecord>>(
                          stream: queryPaymentRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).customColor3,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<PaymentRecord> containerPaymentRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final containerPaymentRecord =
                                containerPaymentRecordList.isNotEmpty
                                    ? containerPaymentRecordList.first
                                    : null;
                            return Container(
                              width: double.infinity,
                              height: 400.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent4,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 20.0, 20.0, 20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 27.0, 0.0, 24.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '1428ixa8' /* Current Billing Cycle : */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'gr23zc3q' /* June 7 2023- Jul 7 2023 */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'b9mqn360' /* Subscription Charges */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          StreamBuilder<
                                              List<ProPlusMonthlyRecord>>(
                                            stream: queryProPlusMonthlyRecord(
                                              queryBuilder:
                                                  (proPlusMonthlyRecord) =>
                                                      proPlusMonthlyRecord.where(
                                                          'name',
                                                          isEqualTo: widget
                                                              .selectedPrice),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .customColor3,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ProPlusMonthlyRecord>
                                                  textProPlusMonthlyRecordList =
                                                  snapshot.data!;
                                              final textProPlusMonthlyRecord =
                                                  textProPlusMonthlyRecordList
                                                          .isNotEmpty
                                                      ? textProPlusMonthlyRecordList
                                                          .first
                                                      : null;
                                              return Text(
                                                formatNumber(
                                                  textProPlusMonthlyRecord!
                                                      .price,
                                                  formatType: FormatType.custom,
                                                  currency: '\$',
                                                  format: '.00',
                                                  locale: '',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'npi8lqck' /* Transaction Fees */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          StreamBuilder<
                                              List<ProPlusMonthlyRecord>>(
                                            stream: queryProPlusMonthlyRecord(
                                              queryBuilder:
                                                  (proPlusMonthlyRecord) =>
                                                      proPlusMonthlyRecord.where(
                                                          'name',
                                                          isEqualTo: widget
                                                              .selectedPrice),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .customColor3,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ProPlusMonthlyRecord>
                                                  textProPlusMonthlyRecordList =
                                                  snapshot.data!;
                                              final textProPlusMonthlyRecord =
                                                  textProPlusMonthlyRecordList
                                                          .isNotEmpty
                                                      ? textProPlusMonthlyRecordList
                                                          .first
                                                      : null;
                                              return Text(
                                                formatNumber(
                                                  textProPlusMonthlyRecord!
                                                      .transactionFees,
                                                  formatType: FormatType.custom,
                                                  currency: '\$',
                                                  format: '.00',
                                                  locale: '',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      indent: 5.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '6qjq88fs' /* Total */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          StreamBuilder<
                                              List<ProPlusMonthlyRecord>>(
                                            stream: queryProPlusMonthlyRecord(
                                              queryBuilder:
                                                  (proPlusMonthlyRecord) =>
                                                      proPlusMonthlyRecord.where(
                                                          'name',
                                                          isEqualTo: widget
                                                              .selectedPrice),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .customColor3,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ProPlusMonthlyRecord>
                                                  text001ProPlusMonthlyRecordList =
                                                  snapshot.data!;
                                              final text001ProPlusMonthlyRecord =
                                                  text001ProPlusMonthlyRecordList
                                                          .isNotEmpty
                                                      ? text001ProPlusMonthlyRecordList
                                                          .first
                                                      : null;
                                              return Text(
                                                formatNumber(
                                                  text001ProPlusMonthlyRecord!
                                                      .totalprice,
                                                  formatType: FormatType.custom,
                                                  currency: '\$',
                                                  format: '.00',
                                                  locale: '',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'skuqpntu' /* View all subscription */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color: Color(0xFFEB2020),
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, 0.05),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: StreamBuilder<
                                            List<ProPlusMonthlyRecord>>(
                                          stream: queryProPlusMonthlyRecord(
                                            queryBuilder:
                                                (proPlusMonthlyRecord) =>
                                                    proPlusMonthlyRecord.where(
                                                        'name',
                                                        isEqualTo: widget
                                                            .selectedPrice),
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .customColor3,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<ProPlusMonthlyRecord>
                                                buttonProPlusMonthlyRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final buttonProPlusMonthlyRecord =
                                                buttonProPlusMonthlyRecordList
                                                        .isNotEmpty
                                                    ? buttonProPlusMonthlyRecordList
                                                        .first
                                                    : null;
                                            return FFButtonWidget(
                                              onPressed: () async {
                                                final paymentResponse =
                                                    await processStripePayment(
                                                  context,
                                                  amount: functions
                                                      .newCustomFunction(
                                                          buttonProPlusMonthlyRecord!
                                                              .totalprice),
                                                  currency: 'USD',
                                                  customerEmail:
                                                      currentUserEmail,
                                                  description: 'Subscription',
                                                  allowGooglePay: true,
                                                  allowApplePay: false,
                                                  themeStyle: ThemeMode.system,
                                                  buttonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  buttonTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                );
                                                if (paymentResponse.paymentId ==
                                                    null) {
                                                  if (paymentResponse
                                                          .errorMessage !=
                                                      null) {
                                                    showSnackbar(
                                                      context,
                                                      'Error: ${paymentResponse.errorMessage}',
                                                    );
                                                  }
                                                  return;
                                                }
                                                _model.paymentId =
                                                    paymentResponse.paymentId!;

                                                setState(() {});
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'yp0z3ovi' /* Save */,
                                              ),
                                              options: FFButtonOptions(
                                                width: 220.0,
                                                height: 50.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFEB2020),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(33.0),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
