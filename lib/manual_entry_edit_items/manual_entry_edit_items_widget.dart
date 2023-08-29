import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/delete_item_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'manual_entry_edit_items_model.dart';
export 'manual_entry_edit_items_model.dart';

class ManualEntryEditItemsWidget extends StatefulWidget {
  const ManualEntryEditItemsWidget({
    Key? key,
    this.seLectFromDropDown,
    this.formName,
  }) : super(key: key);

  final String? seLectFromDropDown;
  final String? formName;

  @override
  _ManualEntryEditItemsWidgetState createState() =>
      _ManualEntryEditItemsWidgetState();
}

class _ManualEntryEditItemsWidgetState
    extends State<ManualEntryEditItemsWidget> {
  late ManualEntryEditItemsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManualEntryEditItemsModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??=
        TextEditingController(text: currentUserLocationValue?.toString());
    _model.sTockController ??= TextEditingController();
    _model.textController6 ??= TextEditingController();
    _model.textController8 ??= TextEditingController();
    _model.textController9 ??= TextEditingController();
    _model.textController10 ??= TextEditingController();
    _model.textController11 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).customColor3,
              ),
            ),
          ),
        ),
      );
    }

    return StreamBuilder<List<ProductRecord>>(
      stream: queryProductRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).customColor3,
                  ),
                ),
              ),
            ),
          );
        }
        List<ProductRecord> manualEntryEditItemsProductRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final manualEntryEditItemsProductRecord =
            manualEntryEditItemsProductRecordList.isNotEmpty
                ? manualEntryEditItemsProductRecordList.first
                : null;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, _) => [
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  backgroundColor: FlutterFlowTheme.of(context).appBar,
                  automaticallyImplyLeading: false,
                  leading: Align(
                    alignment: AlignmentDirectional(0.0, 0.1),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            barrierColor: Color(0x00000000),
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context)
                                    .requestFocus(_model.unfocusNode),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: DeleteItemWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'gzxr24kb' /* DELETE */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro',
                                    color: Color(0xFFEB2020),
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'z5imoqua' /* Edit Item */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'SF Pro',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                        ),
                  ),
                  actions: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.1),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await manualEntryEditItemsProductRecord!.reference
                                .update({
                              ...createProductRecordData(
                                name: _model.textController1.text,
                                barCode: _model.textController2.text,
                                timeStamp: getCurrentTimestamp,
                                quantity: _model.countControllerValue,
                                gpsCoOrdinates:
                                    manualEntryEditItemsProductRecord
                                        ?.gpsCoOrdinates,
                                stockControl: _model.sTockController.text,
                                price: _model.textController6.text,
                                tags: _model.dropDownValue1,
                                catogory: _model.dropDownValue2,
                                images: _model.uploadedFileUrl,
                                paragraph: _model.textController7.text,
                                radioButton: _model.checkboxGroupValues
                                    ?.contains(_model
                                        .checkboxGroupValues?.length
                                        ?.toString()),
                                secondaryBarcode: _model.textController2.text,
                                hidden: _model.textController8.text,
                                webLinks: _model.textController11.text,
                                shortAnswer: _model.textController10.text,
                                owner: currentUserEmail,
                              ),
                              'Date': FieldValue.serverTimestamp(),
                              'ListProducts': FieldValue.arrayUnion(
                                  [_model.textController1.text]),
                            });

                            context.pushNamed(
                              'Home',
                              queryParameters: {
                                'formName': serializeParam(
                                  manualEntryEditItemsProductRecord?.name,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'fhlsigl8' /* SAVE */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro',
                                  color: Color(0xFFEB2020),
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  centerTitle: true,
                  elevation: 0.0,
                )
              ],
              body: Builder(
                builder: (context) {
                  return SafeArea(
                    top: false,
                    child: StreamBuilder<List<ProductRecord>>(
                      stream: queryProductRecord(
                        queryBuilder: (productRecord) => productRecord.where(
                            'ListProducts',
                            arrayContains: widget.formName),
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
                        List<ProductRecord> columnProductRecordList =
                            snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final columnProductRecord =
                            columnProductRecordList.isNotEmpty
                                ? columnProductRecordList.first
                                : null;
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.0, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'id7vmtm5' /* Name */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: Color(0xFF807F7F),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 7.0),
                                            child: Image.asset(
                                              'assets/images/asterisk.png',
                                              width: 8.0,
                                              height: 8.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      TextFormField(
                                        controller: _model.textController1,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: columnProductRecord?.name,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .border,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        keyboardType: TextInputType.name,
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'bu35zkzr' /* Barcode */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: Color(0xFF807F7F),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 7.0),
                                            child: Image.asset(
                                              'assets/images/asterisk.png',
                                              width: 8.0,
                                              height: 8.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      TextFormField(
                                        controller: _model.textController2,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText:
                                              columnProductRecord?.barCode,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .border,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'wrdoy4bp' /* Time Stamp */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            Color(0xFF807F7F),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 0.0, 0.0, 7.0),
                                              child: Image.asset(
                                                'assets/images/asterisk.png',
                                                width: 8.0,
                                                height: 8.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      TextFormField(
                                        controller: _model.textController3,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: columnProductRecord
                                              ?.timeStamp
                                              ?.toString(),
                                          hintText: columnProductRecord
                                              ?.timeStamp
                                              ?.toString(),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .border,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        keyboardType: const TextInputType
                                            .numberWithOptions(
                                            signed: true, decimal: true),
                                        validator: _model
                                            .textController3Validator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 18.5, 30.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child:
                                      StreamBuilder<List<NotificationRecord>>(
                                    stream: queryNotificationRecord(
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .customColor3,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<NotificationRecord>
                                          columnNotificationRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnNotificationRecord =
                                          columnNotificationRecordList
                                                  .isNotEmpty
                                              ? columnNotificationRecordList
                                                  .first
                                              : null;
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'cozh2ohk' /* Quantity */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: Color(0xFF807F7F),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 0.0),
                                            child: Container(
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .quantity,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .quantity,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: FlutterFlowCountController(
                                                decrementIconBuilder:
                                                    (enabled) => FaIcon(
                                                  FontAwesomeIcons.minus,
                                                  color: enabled
                                                      ? Color(0xFFEB2020)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .grayIcon,
                                                  size: 15.0,
                                                ),
                                                incrementIconBuilder:
                                                    (enabled) => FaIcon(
                                                  FontAwesomeIcons.plus,
                                                  color: enabled
                                                      ? Color(0xFFEB2020)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .grayIcon,
                                                  size: 15.0,
                                                ),
                                                countBuilder: (count) => Text(
                                                  count.toString(),
                                                  style: TextStyle(
                                                    fontFamily: 'SF Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12.0,
                                                  ),
                                                ),
                                                count: _model
                                                        .countControllerValue ??=
                                                    columnProductRecord!
                                                        .quantity,
                                                updateCount: (count) async {
                                                  setState(() => _model
                                                          .countControllerValue =
                                                      count);
                                                  if (_model
                                                          .countControllerValue! <
                                                      10) {
                                                    await NotificationLowStockRecord
                                                            .createDoc(
                                                                columnNotificationRecord!
                                                                    .reference)
                                                        .set(
                                                            createNotificationLowStockRecordData(
                                                      lowStockNotification:
                                                          '${_model.textController1.text}has low count of ${_model.countControllerValue?.toString()}',
                                                    ));
                                                  } else {
                                                    return;
                                                  }
                                                },
                                                stepSize: 2,
                                                minimum: 0,
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .border,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 170.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ukr9ms4z' /* GPS Coordinate */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color: Color(0xFF807F7F),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color:
                                            FlutterFlowTheme.of(context).border,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 1.0, 0.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 1.0, 0.0, 10.0),
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController4,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .textController4Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color:
                                            FlutterFlowTheme.of(context).border,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5h8xy0g0' /* [Google Maps  Link URL] */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color:
                                            FlutterFlowTheme.of(context).border,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 18.5, 30.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 152.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '7ea81fmg' /* Stock Control */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFF807F7F),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'db42534m' /* Current Stock */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        fontSize: 13.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        90.0, 0.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller:
                                                      _model.sTockController,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        columnProductRecord
                                                            ?.stockControl,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          useGoogleFonts: false,
                                                        ),
                                                    hintText:
                                                        columnProductRecord
                                                            ?.stockControl,
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          useGoogleFonts: false,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        useGoogleFonts: false,
                                                      ),
                                                  validator: _model
                                                      .sTockControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'k6nhaxov' /* Choose In/Out */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        fontSize: 13.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ],
                                        ),
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'x9lo29sv' /* Quantity */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        fontSize: 13.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color:
                                            FlutterFlowTheme.of(context).border,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 30.0, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 85.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '6vqubpko' /* Price */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFF807F7F),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.textController6,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: columnProductRecord
                                                      ?.price,
                                                  hintText: columnProductRecord
                                                      ?.price,
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        useGoogleFonts: false,
                                                      ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFAAAAAA),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          useGoogleFonts: false,
                                                        ),
                                                textAlign: TextAlign.center,
                                                keyboardType:
                                                    const TextInputType
                                                        .numberWithOptions(
                                                        signed: true,
                                                        decimal: true),
                                                validator: _model
                                                    .textController6Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController1 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue1 ??=
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                    '9n8sq559' /* United States Dollar $ */,
                                                  ),
                                                ),
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'oama12pk' /* Albania Lek (Lek) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1eedh095' /* Afghanistan Afghani 	؋ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'm9qi85v0' /* Argentina Peso $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '38zc4u85' /* Aruba Guilder ƒ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uutoqua1' /* Australia Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vhiypv7d' /* Azerbaijan Manat ₼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mbsuycv5' /* Bahamas Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qc5d3zsr' /* Barbados Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'tct8gmp8' /* Belarus Ruble Br */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'lx6c0n94' /* Belize Dollar BZ$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'h0lo8j9s' /* Bermuda Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '10t9plsb' /* Bolivia Bolíviano $b */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2t7d55hh' /* Bosnia and Herzegovina Convert... */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'k6fam75i' /* Botswana Pula (P) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'kbs3htn2' /* Bulgaria Lev лв */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5qfgsjbk' /* Brazil Real R$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'hh9n2u93' /* Brunei Darussalam Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'c7yh7bla' /* Cambodia Riel ៛ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'lazwv6f0' /* Canada Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'kh1q2626' /* Cayman Islands Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0mx8aoqz' /* Chile Peso $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0c6zz76h' /* China Yuan Renminbi ¥ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7qnybcda' /* Colombia Peso $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6p3a9fdv' /* Costa Rica Colon ₡ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'npyvehz7' /* Croatia Kuna (kn) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '67du4z62' /* Cuba Peso ₱ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'kc9ffnds' /* Czech Republic Koruna Kč */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '70ynfzl3' /* Denmark Krone (kr) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bzs9evv1' /* Dominican Republic Peso RD$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'dzfiei5g' /* East Caribbean Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8fprnkfa' /* Egypt Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'nwf4g3bi' /* El Salvador Colon $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7yrfhlkt' /* Euro Member Countries € */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0xre5prc' /* Falkland Islands (Malvinas) Po... */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'pqvtxm9w' /* Fiji Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'hhd7px93' /* Ghana Cedi ¢ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xmgm30v8' /* Gibraltar Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bhjitw9m' /* Guatemala Quetzal (Q) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'a2h7xg1e' /* Guernsey Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'scq5nrnm' /* Guyana Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'dg33972u' /* Honduras Lempira (L) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xo2dhiay' /* Hong Kong Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'z7cul7it' /* Hungary Forint (Ft) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'icvatbkw' /* Iceland Krona (kr) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ahlan50u' /* India Rupee ₹ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mbq788l0' /* Indonesia Rupiah (Rp) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uf60ub6x' /* Iran Rial ﷼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'b7rrnbmx' /* Isle of Man Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'of906fd4' /* Israel Shekel ₪ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qr0feqmb' /* Jamaica Dollar J$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'os0z61np' /* Japan Yen ¥ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mahnia8j' /* Jersey Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'tn622s1t' /* Kazakhstan Tenge лв */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'okk95fmi' /* Korea (North) Won ₩ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'lyz18d0i' /* Korea (South) Won ₩ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'd9uyz54q' /* Kyrgyzstan Som лв */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6dw5eu2c' /* Laos Kip ₭ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'd0q30n22' /* Lebanon Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'pzq92mdr' /* Liberia Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ij31ou3a' /* Macedonia Denar ден */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'k76sjzok' /* Malaysia Ringgit (RM) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'f2zovc5o' /* Mauritius Rupee (₨) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'gg31s5dj' /* Mexico Peso $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '833o45st' /* Mongolia Tughrik ₮ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4e26iobz' /* Moroccan-dirham  د.إ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'n22wm1jm' /* Mozambique Metical (MT) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6b1o7y9s' /* Namibia Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0qs3da0d' /* Nepal Rupee (₨) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '67a5vbqd' /* Netherlands Antilles Guilder ƒ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5o2yaio4' /* New Zealand Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ngd1b063' /* Nicaragua Cordoba C$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qnegaw4d' /* Nigeria Naira ₦ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'w9lnxzlg' /* Norway Krone (kr) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wlrnq46q' /* Oman Rial ﷼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'q5urovl3' /* Pakistan Rupee (₨) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'nc80eq5c' /* Panama Balboa B/. */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4xi1vtkd' /* Paraguay Guarani (Gs) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'esdviu81' /* Peru Sol S/. */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'd5r5hwdp' /* Philippines Peso ₱ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1ccsq9yv' /* Poland Zloty (zł) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'e2blvm30' /* Qatar Riyal ﷼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1zu2n5ph' /* Romania Leu (lei) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ppsau5qw' /* Russia Ruble ₽ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'rnt11eaz' /* Saint Helena Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5hw384ua' /* Saudi Arabia Riyal ﷼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'rrlo3chp' /* Serbia Dinar Дин. */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'aehb3wq7' /* Seychelles Rupee (₨) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'aqengt17' /* Singapore Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'g4ecixqg' /* Solomon Islands Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bi3tcjgf' /* Somalia Shilling (S) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'btgqspm9' /* South Africa Rand (R) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'n0cbtrq9' /* Sri Lanka Rupee (Rs) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qam7ugu9' /* Sweden Krona (kr) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'oscos3em' /* Switzerland Franc (CHF) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'j1az1nj3' /* Suriname Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '20qq9dyb' /* Syria Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'acmzmq0f' /* Taiwan New Dollar NT$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uckf0i6v' /* Thailand Baht ฿ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'v739hrmk' /* Trinidad and Tobago Dollar TT$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'rqpiy0zv' /* Turkey Lira ₺ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'kavm4lau' /* Tuvalu Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'u4cvq0kw' /* Ukraine Hryvnia ₴ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bpbuptz5' /* UAE-Dirham د.إ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0ux8f2pm' /* United Kingdom Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'u2k6xcww' /* United States Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'x5vp4z6b' /* Uruguay Peso $U */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4d5mmure' /* Uzbekistan Som лв */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ieuqwn3d' /* Venezuela Bolívar Bs */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9pf0054m' /* Viet Nam Dong ₫ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wbyjc3wr' /* Yemen Rial ﷼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '73e0dmrz' /* Zimbabwe Dollar Z$ */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue1 = val),
                                                width: 280.0,
                                                height: 50.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'hdgrtxwf' /* Select Currency */,
                                                ),
                                                icon: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Color(0xFFEB2020),
                                                  size: 15.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 0.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 4.0, 0.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'o3v6nnyk' /* Tag */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFF807F7F),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownValueController2 ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'kwwcbhfu' /* Option 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'b72sgrkp' /* Option 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'pa5m8j2a' /* Option 3 */,
                                          )
                                        ],
                                        onChanged: (val) => setState(
                                            () => _model.dropDownValue2 = val),
                                        height: 55.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Color(0xFFEB2020),
                                          size: 15.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0.0,
                                        borderRadius: 0.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color:
                                            FlutterFlowTheme.of(context).border,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'dl4dkpzj' /* Category */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color: Color(0xFF807F7F),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownValueController3 ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'h7punl6m' /* Style */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'a3a60u6o' /* Furniture */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '2y7dtbtu' /* Gear */,
                                          )
                                        ],
                                        onChanged: (val) => setState(
                                            () => _model.dropDownValue3 = val),
                                        height: 55.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Color(0xFFEB2020),
                                          size: 15.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0.0,
                                        borderRadius: 0.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color:
                                            FlutterFlowTheme.of(context).border,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '3k1pm45y' /* Paragraph */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: Color(0xFF807F7F),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 7.0),
                                            child: Image.asset(
                                              'assets/images/asterisk.png',
                                              width: 8.0,
                                              height: 8.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      TextFormField(
                                        controller: _model.textController7 ??=
                                            TextEditingController(
                                          text: columnProductRecord?.paragraph,
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'ax441465' /* 07/28/2022 10:46 AM */,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .border,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        keyboardType: TextInputType.datetime,
                                        validator: _model
                                            .textController7Validator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 105.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '2grokvcw' /* Radio Button */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: Color(0xFF807F7F),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 7.0),
                                            child: Image.asset(
                                              'assets/images/asterisk.png',
                                              width: 8.0,
                                              height: 8.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      FlutterFlowCheckboxGroup(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'bvzlvgcx' /* Radio Button */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '5n6v42w6' /* Unselect */,
                                          )
                                        ],
                                        onChanged: (val) => setState(() =>
                                            _model.checkboxGroupValues = val),
                                        controller: _model
                                                .checkboxGroupValueController ??=
                                            FormFieldController<List<String>>(
                                          [],
                                        ),
                                        activeColor: Color(0xFFB29173),
                                        checkColor: Colors.white,
                                        checkboxBorderColor: Color(0xFF95A1AC),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        checkboxBorderRadius:
                                            BorderRadius.circular(50.0),
                                        initialized:
                                            _model.checkboxGroupValues != null,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'by2v0t2w' /* Hidden */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: Color(0xFF807F7F),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 7.0),
                                            child: Image.asset(
                                              'assets/images/asterisk.png',
                                              width: 8.0,
                                              height: 8.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      TextFormField(
                                        controller: _model.textController8,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText:
                                              columnProductRecord?.hidden,
                                          hintText: columnProductRecord?.hidden,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .border,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController8Validator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '3w0do3m5' /* Date */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: Color(0xFF807F7F),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 7.0),
                                            child: Image.asset(
                                              'assets/images/asterisk.png',
                                              width: 8.0,
                                              height: 8.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      TextFormField(
                                        controller: _model.textController9,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: columnProductRecord?.date
                                              ?.toString(),
                                          hintText: columnProductRecord?.date
                                              ?.toString(),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .border,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController9Validator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'ftexc4bf' /* Short Answer */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: Color(0xFF807F7F),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 7.0),
                                            child: Image.asset(
                                              'assets/images/asterisk.png',
                                              width: 8.0,
                                              height: 8.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      TextFormField(
                                        controller: _model.textController10,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText:
                                              columnProductRecord?.shortAnswer,
                                          hintText:
                                              columnProductRecord?.shortAnswer,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .border,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController10Validator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'vr8m29m3' /* Web Links */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: Color(0xFF807F7F),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 7.0),
                                            child: Image.asset(
                                              'assets/images/asterisk.png',
                                              width: 8.0,
                                              height: 8.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      TextFormField(
                                        controller: _model.textController11,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText:
                                              columnProductRecord?.webLinks,
                                          hintText:
                                              columnProductRecord?.webLinks,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .border,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController11Validator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 18.5, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 161.8,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '1fcl071e' /* Images */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color: Color(0xFF807F7F),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  width: 141.0,
                                                  height: 106.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF5F5F5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 10.0,
                                                        color:
                                                            Color(0x10000000),
                                                        offset:
                                                            Offset(10.0, 10.0),
                                                        spreadRadius: 2.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: Color(0xFFD3D3D3),
                                                    ),
                                                  ),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      columnProductRecord
                                                          ?.images,
                                                      'data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNDEiIGhlaWdodD0iMTA2IiB2aWV3Qm94PSIwIDAgMTQxIDEwNiI+CiAgPGcgaWQ9Ikdyb3VwXzY1NSIgZGF0YS1uYW1lPSJHcm91cCA2NTUiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC03NTQgLTI3OTApIj4KICAgIDxnIGlkPSJSZWN0YW5nbGVfNDc2IiBkYXRhLW5hbWU9IlJlY3RhbmdsZSA0NzYiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDc1NCAyNzkwKSIgZmlsbD0iI2Y1ZjVmNSIgc3Ryb2tlPSIjZDNkM2QzIiBzdHJva2Utd2lkdGg9IjEiPgogICAgICA8cmVjdCB3aWR0aD0iMTQxIiBoZWlnaHQ9IjEwNiIgcng9IjEwIiBzdHJva2U9Im5vbmUiLz4KICAgICAgPHJlY3QgeD0iMC41IiB5PSIwLjUiIHdpZHRoPSIxNDAiIGhlaWdodD0iMTA1IiByeD0iOS41IiBmaWxsPSJub25lIi8+CiAgICA8L2c+CiAgICA8ZyBpZD0iR3JvdXBfNjU0IiBkYXRhLW5hbWU9Ikdyb3VwIDY1NCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMxOS42OTUgMTQuOTM4KSI+CiAgICAgIDxnIGlkPSJHcm91cF82NTMiIGRhdGEtbmFtZT0iR3JvdXAgNjUzIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxMTIxIDI4MDkuNTYyKSI+CiAgICAgICAgPHBhdGggaWQ9IlBhdGhfMzY5NCIgZGF0YS1uYW1lPSJQYXRoIDM2OTQiIGQ9Ik04NiwzMDMuMjNsNy44MDYtNy44MDYsMy42MzIsMy45TDEwOS45NTgsMjg3bDEwLjExNywxMC4wMjd2MTAuODRIODZaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNzkuODEzIC0yNzYuOTEyKSIgZmlsbD0iI2FmYWZhZiIvPgogICAgICAgIDxjaXJjbGUgaWQ9IkVsbGlwc2VfMjc5IiBkYXRhLW5hbWU9IkVsbGlwc2UgMjc5IiBjeD0iNC43NTEiIGN5PSI0Ljc1MSIgcj0iNC43NTEiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDYuMDU1IDUuODgxKSIgZmlsbD0iI2FmYWZhZiIvPgogICAgICAgIDxwYXRoIGlkPSJQYXRoXzM2OTUiIGRhdGEtbmFtZT0iUGF0aCAzNjk1IiBkPSJNNDguMywxNTYuNDY2SDkuOTkzYTQuMDQyLDQuMDQyLDAsMCwwLTQuMDQyLDQuMDQydjI4LjkxNWE0LjA0Miw0LjA0MiwwLDAsMCw0LjA0Miw0LjA0Mkg0OC4zYTQuMDQyLDQuMDQyLDAsMCwwLDQuMDQyLTQuMDQyVjE2MC41MDhBNC4wNDIsNC4wNDIsMCwwLDAsNDguMywxNTYuNDY2Wm0uOTMzLDMzLjMzM2EuNzc0Ljc3NCwwLDAsMS0uNzc0Ljc3NEg5Ljg3OUEuNzc0Ljc3NCwwLDAsMSw5LjEsMTg5LjhWMTYwLjNhLjc3NC43NzQsMCwwLDEsLjc3NC0uNzc0SDQ4LjQ1N2EuNzc0Ljc3NCwwLDAsMSwuNzc0Ljc3NFoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC01Ljk1MSAtMTU2LjQ2NikiIGZpbGw9IiNhZmFmYWYiLz4KICAgICAgPC9nPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==',
                                                    ),
                                                    width: 100.0,
                                                    height: 100.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  height: 106.0,
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            final selectedMedia =
                                                                await selectMediaWithSourceBottomSheet(
                                                              context: context,
                                                              allowPhoto: true,
                                                            );
                                                            if (selectedMedia !=
                                                                    null &&
                                                                selectedMedia.every((m) =>
                                                                    validateFileFormat(
                                                                        m.storagePath,
                                                                        context))) {
                                                              setState(() =>
                                                                  _model.isDataUploading =
                                                                      true);
                                                              var selectedUploadedFiles =
                                                                  <FFUploadedFile>[];

                                                              var downloadUrls =
                                                                  <String>[];
                                                              try {
                                                                selectedUploadedFiles =
                                                                    selectedMedia
                                                                        .map((m) =>
                                                                            FFUploadedFile(
                                                                              name: m.storagePath.split('/').last,
                                                                              bytes: m.bytes,
                                                                              height: m.dimensions?.height,
                                                                              width: m.dimensions?.width,
                                                                              blurHash: m.blurHash,
                                                                            ))
                                                                        .toList();

                                                                downloadUrls = (await Future
                                                                        .wait(
                                                                  selectedMedia
                                                                      .map(
                                                                    (m) async =>
                                                                        await uploadData(
                                                                            m.storagePath,
                                                                            m.bytes),
                                                                  ),
                                                                ))
                                                                    .where((u) =>
                                                                        u !=
                                                                        null)
                                                                    .map((u) =>
                                                                        u!)
                                                                    .toList();
                                                              } finally {
                                                                _model.isDataUploading =
                                                                    false;
                                                              }
                                                              if (selectedUploadedFiles
                                                                          .length ==
                                                                      selectedMedia
                                                                          .length &&
                                                                  downloadUrls
                                                                          .length ==
                                                                      selectedMedia
                                                                          .length) {
                                                                setState(() {
                                                                  _model.uploadedLocalFile =
                                                                      selectedUploadedFiles
                                                                          .first;
                                                                  _model.uploadedFileUrl =
                                                                      downloadUrls
                                                                          .first;
                                                                });
                                                              } else {
                                                                setState(() {});
                                                                return;
                                                              }
                                                            }
                                                          },
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 2.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                            ),
                                                            child: Container(
                                                              width: 164.0,
                                                              height: 47.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFB29173),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        6.0,
                                                                    color: Color(
                                                                        0x0000001A),
                                                                    offset:
                                                                        Offset(
                                                                            0.0,
                                                                            3.0),
                                                                    spreadRadius:
                                                                        2.0,
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFFB29173),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '7o42z1vq' /* Upload Photo */,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SF Pro',
                                                                        color: Color(
                                                                            0xFFEDEFEC),
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 2.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                        ),
                                                        child: Container(
                                                          width: 164.0,
                                                          height: 47.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFAFAFAF),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 6.0,
                                                                color: Color(
                                                                    0x0000001A),
                                                                offset: Offset(
                                                                    0.0, 3.0),
                                                                spreadRadius:
                                                                    2.0,
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFFAFAFAF),
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'hslu9158' /* Mint NFT */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'SF Pro',
                                                                    color: Color(
                                                                        0xFFEDEFEC),
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
