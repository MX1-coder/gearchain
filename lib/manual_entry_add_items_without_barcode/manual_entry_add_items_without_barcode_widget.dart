import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'manual_entry_add_items_without_barcode_model.dart';
export 'manual_entry_add_items_without_barcode_model.dart';

class ManualEntryAddItemsWithoutBarcodeWidget extends StatefulWidget {
  const ManualEntryAddItemsWithoutBarcodeWidget({
    Key? key,
    this.formName,
    this.barcode,
    this.timeStamp,
    this.name,
    this.stock,
    this.image,
    this.dropDown,
    this.paraGraph,
    this.radioButton,
    this.gps,
    this.secondaryBarcode,
    this.hidden,
    this.date,
    this.shortAnswer,
    this.tag,
    this.price,
    this.webLinks,
    this.numberCount,
    this.dropDownSelectionForm,
    this.caTOGORY,
    this.selectionDropDownStaff,
  }) : super(key: key);

  final String? formName;
  final bool? barcode;
  final bool? timeStamp;
  final bool? name;
  final bool? stock;
  final bool? image;
  final bool? dropDown;
  final bool? paraGraph;
  final bool? radioButton;
  final bool? gps;
  final bool? secondaryBarcode;
  final bool? hidden;
  final bool? date;
  final bool? shortAnswer;
  final bool? tag;
  final bool? price;
  final bool? webLinks;
  final bool? numberCount;
  final String? dropDownSelectionForm;
  final String? caTOGORY;
  final String? selectionDropDownStaff;

  @override
  _ManualEntryAddItemsWithoutBarcodeWidgetState createState() =>
      _ManualEntryAddItemsWithoutBarcodeWidgetState();
}

class _ManualEntryAddItemsWithoutBarcodeWidgetState
    extends State<ManualEntryAddItemsWithoutBarcodeWidget> {
  late ManualEntryAddItemsWithoutBarcodeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => ManualEntryAddItemsWithoutBarcodeModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
    _model.textController6 ??= TextEditingController();
    _model.textController7 ??= TextEditingController();
    _model.textController8 ??= TextEditingController();
    _model.textController9 ??= TextEditingController();
    _model.textController10 ??= TextEditingController();
    _model.textController11 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController5?.text = FFLocalizations.of(context).getText(
            'kioma9go' /* 1 */,
          );
          _model.textController7?.text = FFLocalizations.of(context).getText(
            'l6q82vnc' /* Paragraph */,
          );
        }));
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

    return StreamBuilder<List<FormsDataRecord>>(
      stream: queryFormsDataRecord(
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
        List<FormsDataRecord>
            manualEntryAddItemsWithoutBarcodeFormsDataRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final manualEntryAddItemsWithoutBarcodeFormsDataRecord =
            manualEntryAddItemsWithoutBarcodeFormsDataRecordList.isNotEmpty
                ? manualEntryAddItemsWithoutBarcodeFormsDataRecordList.first
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
                  leading: Container(
                    width: 50.0,
                    height: 14.0,
                    decoration: BoxDecoration(),
                    child: Align(
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
                            context.pop();
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'nqf0lou4' /* CANCEL */,
                            ),
                            textAlign: TextAlign.start,
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
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      '6o1xihk3' /* Add Item */,
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
                        child: StreamBuilder<List<UserRecord>>(
                          stream: queryUserRecord(
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
                            List<UserRecord> textUserRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final textUserRecord = textUserRecordList.isNotEmpty
                                ? textUserRecordList.first
                                : null;
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Product_search');

                                await ProductRecord.collection.doc().set({
                                  ...createProductRecordData(
                                    name: _model.textController1.text,
                                    barCode: _model.textController2.text,
                                    timeStamp: getCurrentTimestamp,
                                    quantity: valueOrDefault<int>(
                                      _model.countControllerValue1,
                                      0,
                                    ),
                                    gpsCoOrdinates: valueOrDefault<String>(
                                      _model.textController4.text,
                                      'No Device Location available',
                                    ),
                                    stockControl: valueOrDefault<String>(
                                      _model.textController5.text,
                                      '0',
                                    ),
                                    price: valueOrDefault<String>(
                                      _model.textController6.text,
                                      '0.00',
                                    ),
                                    tags: _model.dropDownValue2,
                                    catogory: _model.dropDownValue4,
                                    images: _model.uploadedFileUrl,
                                    paragraph: _model.textController7.text,
                                    radioButton: _model.checkboxGroupValues
                                        ?.contains(_model
                                            .checkboxGroupValues?.length
                                            ?.toString()),
                                    secondaryBarcode:
                                        _model.textController10.text,
                                    hidden: _model.textController8.text,
                                    webLinks: _model.textController11.text,
                                    shortAnswer: _model.textController10.text,
                                    dateinString: _model.textController3.text,
                                    owner: currentUserEmail,
                                  ),
                                  'Date': FieldValue.serverTimestamp(),
                                  'ListProducts': [_model.textController1.text],
                                });
                                FFAppState().ItemCount =
                                    FFAppState().ItemCount + 16;

                                await NewProductRecord.createDoc(
                                        manualEntryAddItemsWithoutBarcodeFormsDataRecord!
                                            .formsData!)
                                    .set(createNewProductRecordData());
                              },
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'frac8f28' /* SAVE */,
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
                            );
                          },
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
                    child: StreamBuilder<List<FormsDataRecord>>(
                      stream: queryFormsDataRecord(
                        queryBuilder: (formsDataRecord) =>
                            formsDataRecord.where('FormTitle',
                                arrayContains: widget.dropDownSelectionForm),
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
                        List<FormsDataRecord> columnFormsDataRecordList =
                            snapshot.data!;
                        final columnFormsDataRecord =
                            columnFormsDataRecordList.isNotEmpty
                                ? columnFormsDataRecordList.first
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
                                  decoration: BoxDecoration(),
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
                                              'ocysb9a2' /* Name */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
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
                                        controller: _model.textController1 ??=
                                            TextEditingController(
                                          text: columnFormsDataRecord?.formName,
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'usscd4r5' /* Enter Item Name */,
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
                                    31.0, 18.0, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
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
                                              '8wluig9e' /* Barcode */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
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
                                      Container(
                                        width: 400.0,
                                        height: 70.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.textController2,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'miokkggp' /* Please Enter Barcode */,
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .border,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
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
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  useGoogleFonts: false,
                                                ),
                                            keyboardType: TextInputType.number,
                                            validator: _model
                                                .textController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 0.0, 31.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
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
                                                'k05f3css' /* Timestamp */,
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 3.0, 0.0),
                                        child: TextFormField(
                                          controller: _model.textController3,
                                          onFieldSubmitted: (_) async {
                                            final _datePickedDate =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: getCurrentTimestamp,
                                              firstDate: getCurrentTimestamp,
                                              lastDate: DateTime(2050),
                                            );

                                            TimeOfDay? _datePickedTime;
                                            if (_datePickedDate != null) {
                                              _datePickedTime =
                                                  await showTimePicker(
                                                context: context,
                                                initialTime:
                                                    TimeOfDay.fromDateTime(
                                                        getCurrentTimestamp),
                                              );
                                            }

                                            if (_datePickedDate != null &&
                                                _datePickedTime != null) {
                                              setState(() {
                                                _model.datePicked = DateTime(
                                                  _datePickedDate.year,
                                                  _datePickedDate.month,
                                                  _datePickedDate.day,
                                                  _datePickedTime!.hour,
                                                  _datePickedTime.minute,
                                                );
                                              });
                                            }
                                          },
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: dateTimeFormat(
                                              'M/d H:mm',
                                              getCurrentTimestamp,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
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
                                          keyboardType: const TextInputType
                                              .numberWithOptions(
                                              signed: true, decimal: true),
                                          validator: _model
                                              .textController3Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (columnFormsDataRecord?.numbercount ?? true)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 18.5, 10.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'ify855zn' /* Quantity */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .quantity,
                                                width: 0.0,
                                              ),
                                            ),
                                            child: FlutterFlowCountController(
                                              decrementIconBuilder: (enabled) =>
                                                  FaIcon(
                                                FontAwesomeIcons.minus,
                                                color: enabled
                                                    ? Color(0xFFEB2020)
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .grayIcon,
                                                size: 15.0,
                                              ),
                                              incrementIconBuilder: (enabled) =>
                                                  FaIcon(
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
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                              count: _model
                                                  .countControllerValue1 ??= 0,
                                              updateCount: (count) => setState(
                                                  () => _model
                                                          .countControllerValue1 =
                                                      count),
                                              stepSize: 1,
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
                                    ),
                                  ),
                                ),
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.gpsCordinates,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 10.0, 30.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: StreamBuilder<List<FormsDataRecord>>(
                                      stream: queryFormsDataRecord(
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .customColor3,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<FormsDataRecord>
                                            columnFormsDataRecordList =
                                            snapshot.data!;
                                        final columnFormsDataRecord =
                                            columnFormsDataRecordList.isNotEmpty
                                                ? columnFormsDataRecordList
                                                    .first
                                                : null;
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ewthwlv7' /* GPS Coordinate */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textController4,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                currentUserLocationValue
                                                                    ?.toString(),
                                                            hintText:
                                                                currentUserLocationValue
                                                                    ?.toString(),
                                                            enabledBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .border,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            errorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            focusedErrorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                          keyboardType:
                                                              const TextInputType
                                                                  .numberWithOptions(
                                                                  signed: true,
                                                                  decimal:
                                                                      true),
                                                          validator: _model
                                                              .textController4Validator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k8ftv117' /* [Google Maps  Link URL] */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .border,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.stocks,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 10.0, 10.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: StreamBuilder<List<FormsDataRecord>>(
                                      stream: queryFormsDataRecord(
                                        queryBuilder: (formsDataRecord) =>
                                            formsDataRecord.where('Stocks',
                                                isEqualTo: columnFormsDataRecord
                                                    ?.stocks),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .customColor3,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<FormsDataRecord>
                                            columnFormsDataRecordList =
                                            snapshot.data!;
                                        final columnFormsDataRecord =
                                            columnFormsDataRecordList.isNotEmpty
                                                ? columnFormsDataRecordList
                                                    .first
                                                : null;
                                        return SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'urt2z32x' /* Stock Control */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ceg9aba7' /* Current Stock */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  72.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController5,
                                                        autofocus: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            '3pguic0c' /* 0 Quantity */,
                                                          ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'SF Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        validator: _model
                                                            .textController5Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .dropDownValueController1 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'edz6p6ne' /* Choose In */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        's1ft02ko' /* Choose  out */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .dropDownValue1 =
                                                            val),
                                                    width: 318.0,
                                                    height: 30.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          fontSize: 12.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'j3zlogfj' /* Choose In/Out */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    elevation: 2.0,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'nqw6cv07' /* Quantity */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .quantity,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .quantity,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child:
                                                                FlutterFlowCountController(
                                                              decrementIconBuilder:
                                                                  (enabled) =>
                                                                      FaIcon(
                                                                FontAwesomeIcons
                                                                    .minus,
                                                                color: enabled
                                                                    ? Color(
                                                                        0xFFEB2020)
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .grayIcon,
                                                                size: 15.0,
                                                              ),
                                                              incrementIconBuilder:
                                                                  (enabled) =>
                                                                      FaIcon(
                                                                FontAwesomeIcons
                                                                    .plus,
                                                                color: enabled
                                                                    ? Color(
                                                                        0xFFEB2020)
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .grayIcon,
                                                                size: 15.0,
                                                              ),
                                                              countBuilder:
                                                                  (count) =>
                                                                      Text(
                                                                count
                                                                    .toString(),
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'SF Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                              ),
                                                              count: _model
                                                                  .countControllerValue2 ??= 0,
                                                              updateCount: (count) =>
                                                                  setState(() =>
                                                                      _model.countControllerValue2 =
                                                                          count),
                                                              stepSize: 1,
                                                              minimum: 0,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .border,
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.price,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 10.0, 1.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: StreamBuilder<List<FormsDataRecord>>(
                                      stream: queryFormsDataRecord(
                                        queryBuilder: (formsDataRecord) =>
                                            formsDataRecord.where('Price',
                                                isEqualTo: columnFormsDataRecord
                                                    ?.price),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .customColor3,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<FormsDataRecord>
                                            columnFormsDataRecordList =
                                            snapshot.data!;
                                        final columnFormsDataRecord =
                                            columnFormsDataRecordList.isNotEmpty
                                                ? columnFormsDataRecordList
                                                    .first
                                                : null;
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'u4iherc8' /* Price */,
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
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                31.0,
                                                                10.0,
                                                                31.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textController6,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall,
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFFAAAAAA),
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
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
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
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
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
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
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
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      textAlign:
                                                          TextAlign.center,
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
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownValueController2 ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropDownValue2 ??=
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'w79ms4mb' /* United States Dollar $ */,
                                                      ),
                                                    ),
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '235miiwp' /* Albania Lek (Lek) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9ub6rouq' /* Afghanistan Afghani 	؋ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'gmr6eplt' /* Argentina Peso $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '90r8xcgj' /* Aruba Guilder ƒ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9zv4ipyi' /* Australia Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'dqettl8v' /* Azerbaijan Manat ₼ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '46zlrbyp' /* Bahamas Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9seibtol' /* Barbados Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8b500vir' /* Belarus Ruble Br */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'patlaqrr' /* Belize Dollar BZ$ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '0rh6ujeu' /* Bermuda Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'g8qqszj9' /* Bolivia Bolíviano $b */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'vspukciu' /* Bosnia and Herzegovina Convert... */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'oz5x5vi0' /* Botswana Pula (P) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'oe1i1hjj' /* Bulgaria Lev лв */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1x83qwot' /* Brazil Real R$ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'd9u3x729' /* Brunei Darussalam Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'kcug81z3' /* Cambodia Riel ៛ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'o559e21u' /* Canada Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'i7amjq62' /* Cayman Islands Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'yrjiarnz' /* Chile Peso $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zdm4200e' /* China Yuan Renminbi ¥ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'oow8so2h' /* Colombia Peso $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'epo1uq43' /* Costa Rica Colon ₡ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '35slofmp' /* Croatia Kuna (kn) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'qm9gm7ax' /* Cuba Peso ₱ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6dzhrx7j' /* Czech Republic Koruna Kč */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xtjt5fm6' /* Denmark Krone (kr) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'nvkbll7y' /* Dominican Republic Peso RD$ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '12fw6xu2' /* East Caribbean Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jhsjcdjg' /* Egypt Pound £ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'slatdoys' /* El Salvador Colon $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'egbibj57' /* Euro Member Countries € */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4b4rb1r4' /* Falkland Islands (Malvinas) Po... */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '32ucic8r' /* Fiji Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'cfwxy3n8' /* Ghana Cedi ¢ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'kl78v86g' /* Gibraltar Pound £ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uxpwihc6' /* Guatemala Quetzal (Q) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'pes2q5e8' /* Guernsey Pound £ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8gn83v0q' /* Guyana Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1qrjmu8g' /* Honduras Lempira (L) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'hibhhh7s' /* Hong Kong Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'oj2qmt0v' /* Hungary Forint (Ft) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '39m2wfzh' /* Iceland Krona (kr) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'n0jd0r4c' /* India Rupee ₹ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'rjis87cw' /* Indonesia Rupiah (Rp) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'bc91amlm' /* Iran Rial ﷼ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1ba3m9tc' /* Isle of Man Pound £ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5gi1b96f' /* Israel Shekel ₪ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'kme8echf' /* Jamaica Dollar J$ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uk8zxrbr' /* Japan Yen ¥ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7f1bg70d' /* Jersey Pound £ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3j1uwsaz' /* Kazakhstan Tenge лв */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jkb7tt4i' /* Korea (North) Won ₩ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '38pitcw8' /* Korea (South) Won ₩ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm1vck8zm' /* Kyrgyzstan Som лв */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '2vs8xsy1' /* Laos Kip ₭ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ij961086' /* Lebanon Pound £ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '0l04gaa1' /* Liberia Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xi7evban' /* Macedonia Denar ден */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'neqzntg1' /* Malaysia Ringgit (RM) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'gcu3od6k' /* Mauritius Rupee (₨) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '05s1chpr' /* Mexico Peso $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'y0xwn9xl' /* Mongolia Tughrik ₮ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'avetsm29' /* Moroccan-dirham  د.إ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'otbrwe2n' /* Mozambique Metical (MT) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'q5ci465m' /* Namibia Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6n7ka1fx' /* Nepal Rupee (₨) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6mlgrtsn' /* Netherlands Antilles Guilder ƒ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '17lrxqes' /* New Zealand Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'fe7m8k6o' /* Nicaragua Cordoba C$ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'u9b0gaae' /* Nigeria Naira ₦ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4hoj9cjr' /* Norway Krone (kr) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ieo35f5c' /* Oman Rial ﷼ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3yhq1cjm' /* Pakistan Rupee (₨) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'c8bt1wf2' /* Panama Balboa B/. */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ounj66dt' /* Paraguay Guarani (Gs) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wesgu61x' /* Peru Sol S/. */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xj0jvd0l' /* Philippines Peso ₱ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xso0cirx' /* Poland Zloty (zł) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7gva3ocq' /* Qatar Riyal ﷼ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'h786wdns' /* Romania Leu (lei) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'r0o1zjgn' /* Russia Ruble ₽ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6fz2u1hp' /* Saint Helena Pound £ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm47ia12v' /* Saudi Arabia Riyal ﷼ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ewl42bcp' /* Serbia Dinar Дин. */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3h6xc78e' /* Seychelles Rupee (₨) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'yno6tak8' /* Singapore Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'q7wwskf4' /* Solomon Islands Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'lgaikvk7' /* Somalia Shilling (S) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'k7csi5ku' /* South Africa Rand (R) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'n34kjddo' /* Sri Lanka Rupee (Rs) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'y884esj2' /* Sweden Krona (kr) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'rzvzqwq5' /* Switzerland Franc (CHF) */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wkf3zgwn' /* Suriname Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3tue0858' /* Syria Pound £ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ptifcyd4' /* Taiwan New Dollar NT$ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wwfkpame' /* Thailand Baht ฿ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ck4hydk2' /* Trinidad and Tobago Dollar TT$ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wwuxkbj5' /* Turkey Lira ₺ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm4iqq4th' /* Tuvalu Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ht8cdkzo' /* Ukraine Hryvnia ₴ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wprkpi40' /* UAE-Dirham د.إ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'qusrk3cc' /* United Kingdom Pound £ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'h2g3x4zl' /* United States Dollar $ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zwrcgq7l' /* Uruguay Peso $U */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'mcou6kit' /* Uzbekistan Som лв */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'c4g56u7a' /* Venezuela Bolívar Bs */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'p9hgl9gj' /* Viet Nam Dong ₫ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sb7sk1db' /* Yemen Rial ﷼ */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'lsncryl7' /* Zimbabwe Dollar Z$ */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .dropDownValue2 =
                                                            val),
                                                    width: 322.0,
                                                    height: 50.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
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
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'j40cr10o' /* Select Currency */,
                                                    ),
                                                    icon: Icon(
                                                      Icons.keyboard_arrow_down,
                                                      color: Color(0xFFEB2020),
                                                      size: 15.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0.0,
                                                    borderRadius: 0.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 4.0,
                                                                12.0, 4.0),
                                                    hidesUnderline: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .border,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.tags,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 10.0, 23.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: StreamBuilder<List<FormsDataRecord>>(
                                      stream: queryFormsDataRecord(
                                        queryBuilder: (formsDataRecord) =>
                                            formsDataRecord.where('Tags',
                                                isEqualTo: columnFormsDataRecord
                                                    ?.tags),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .customColor3,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<FormsDataRecord>
                                            columnFormsDataRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final columnFormsDataRecord =
                                            columnFormsDataRecordList.isNotEmpty
                                                ? columnFormsDataRecordList
                                                    .first
                                                : null;
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'th2vey4p' /* Tag */,
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
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController3 ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5ulfomq1' /* Option 1 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'obyliepp' /* Option 2 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ca9k0pd7' /* Option 3 */,
                                                )
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownValue3 = val),
                                              height: 55.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Color(0xFFEB2020),
                                                size: 15.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 0.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 0.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                    31.0, 10.0, 23.0, 0.0),
                                child: Container(
                                  width: double.infinity,
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
                                          'hscmo7f0' /* Category */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      if (valueOrDefault<bool>(
                                        widget.tag,
                                        false,
                                      ))
                                        FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController4 ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'x0foav0j' /* Style */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'h0n3nguw' /* Furniture */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'eiavgor7' /* Gear */,
                                            )
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.dropDownValue4 = val),
                                          height: 55.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 0.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 0.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
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
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.paragraph,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 10.0, 31.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'eqlto0vp' /* Paragraph */,
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
                                        if (widget.paraGraph ?? true)
                                          TextFormField(
                                            controller: _model.textController7,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '5bqs4i9h' /* 07/28/2022 10:46 AM */,
                                              ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .border,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
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
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                            keyboardType:
                                                TextInputType.datetime,
                                            validator: _model
                                                .textController7Validator
                                                .asValidator(context),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.radioButton,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 10.0, 31.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'kp4pdlye' /* Radio Button */,
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
                                        if (valueOrDefault<bool>(
                                          widget.radioButton,
                                          false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: FlutterFlowCheckboxGroup(
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  's7zx7188' /* Radio Button 1 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'n4c9306r' /* Unselect */,
                                                )
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.checkboxGroupValues =
                                                      val),
                                              controller: _model
                                                      .checkboxGroupValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                [],
                                              ),
                                              activeColor: Color(0xFFB29173),
                                              checkColor: Colors.white,
                                              checkboxBorderColor:
                                                  Color(0xFF95A1AC),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              checkboxBorderRadius:
                                                  BorderRadius.circular(50.0),
                                              initialized:
                                                  _model.checkboxGroupValues !=
                                                      null,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.hidden,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 10.0, 31.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fh4t30kv' /* Hidden */,
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
                                        if (valueOrDefault<bool>(
                                          widget.hidden,
                                          false,
                                        ))
                                          TextFormField(
                                            controller: _model.textController8,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .border,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
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
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.date,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 10.0, 31.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'qh7jvsnq' /* Date */,
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
                                        if (valueOrDefault<bool>(
                                          widget.date,
                                          false,
                                        ))
                                          TextFormField(
                                            controller: _model.textController9,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .border,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
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
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.shortAnswer,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 10.0, 31.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'iyfoxupy' /* Name */,
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
                                        if (valueOrDefault<bool>(
                                          columnFormsDataRecord?.barcode,
                                          false,
                                        ))
                                          TextFormField(
                                            controller: _model.textController10,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .border,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
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
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                            validator: _model
                                                .textController10Validator
                                                .asValidator(context),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.webLinks,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 10.0, 31.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'uyws6w9c' /* Web Links */,
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
                                        if (valueOrDefault<bool>(
                                          columnFormsDataRecord?.barcode,
                                          false,
                                        ))
                                          TextFormField(
                                            controller: _model.textController11,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .border,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
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
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
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
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                              if (valueOrDefault<bool>(
                                columnFormsDataRecord?.images,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 10.0, 31.0, 0.0),
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
                                              'zql69c0v' /* Images */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 141.0,
                                                    height: 106.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF5F5F5),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD3D3D3),
                                                      ),
                                                    ),
                                                    child: Image.network(
                                                      valueOrDefault<String>(
                                                        _model.uploadedFileUrl,
                                                        'data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNDEiIGhlaWdodD0iMTA2IiB2aWV3Qm94PSIwIDAgMTQxIDEwNiI+CiAgPGcgaWQ9Ikdyb3VwXzY1NSIgZGF0YS1uYW1lPSJHcm91cCA2NTUiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC03NTQgLTI3OTApIj4KICAgIDxnIGlkPSJSZWN0YW5nbGVfNDc2IiBkYXRhLW5hbWU9IlJlY3RhbmdsZSA0NzYiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDc1NCAyNzkwKSIgZmlsbD0iI2Y1ZjVmNSIgc3Ryb2tlPSIjZDNkM2QzIiBzdHJva2Utd2lkdGg9IjEiPgogICAgICA8cmVjdCB3aWR0aD0iMTQxIiBoZWlnaHQ9IjEwNiIgcng9IjEwIiBzdHJva2U9Im5vbmUiLz4KICAgICAgPHJlY3QgeD0iMC41IiB5PSIwLjUiIHdpZHRoPSIxNDAiIGhlaWdodD0iMTA1IiByeD0iOS41IiBmaWxsPSJub25lIi8+CiAgICA8L2c+CiAgICA8ZyBpZD0iR3JvdXBfNjU0IiBkYXRhLW5hbWU9Ikdyb3VwIDY1NCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMxOS42OTUgMTQuOTM4KSI+CiAgICAgIDxnIGlkPSJHcm91cF82NTMiIGRhdGEtbmFtZT0iR3JvdXAgNjUzIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxMTIxIDI4MDkuNTYyKSI+CiAgICAgICAgPHBhdGggaWQ9IlBhdGhfMzY5NCIgZGF0YS1uYW1lPSJQYXRoIDM2OTQiIGQ9Ik04NiwzMDMuMjNsNy44MDYtNy44MDYsMy42MzIsMy45TDEwOS45NTgsMjg3bDEwLjExNywxMC4wMjd2MTAuODRIODZaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNzkuODEzIC0yNzYuOTEyKSIgZmlsbD0iI2FmYWZhZiIvPgogICAgICAgIDxjaXJjbGUgaWQ9IkVsbGlwc2VfMjc5IiBkYXRhLW5hbWU9IkVsbGlwc2UgMjc5IiBjeD0iNC43NTEiIGN5PSI0Ljc1MSIgcj0iNC43NTEiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDYuMDU1IDUuODgxKSIgZmlsbD0iI2FmYWZhZiIvPgogICAgICAgIDxwYXRoIGlkPSJQYXRoXzM2OTUiIGRhdGEtbmFtZT0iUGF0aCAzNjk1IiBkPSJNNDguMywxNTYuNDY2SDkuOTkzYTQuMDQyLDQuMDQyLDAsMCwwLTQuMDQyLDQuMDQydjI4LjkxNWE0LjA0Miw0LjA0MiwwLDAsMCw0LjA0Miw0LjA0Mkg0OC4zYTQuMDQyLDQuMDQyLDAsMCwwLDQuMDQyLTQuMDQyVjE2MC41MDhBNC4wNDIsNC4wNDIsMCwwLDAsNDguMywxNTYuNDY2Wm0uOTMzLDMzLjMzM2EuNzc0Ljc3NCwwLDAsMS0uNzc0Ljc3NEg5Ljg3OUEuNzc0Ljc3NCwwLDAsMSw5LjEsMTg5LjhWMTYwLjNhLjc3NC43NzQsMCwwLDEsLjc3NC0uNzc0SDQ4LjQ1N2EuNzc0Ljc3NCwwLDAsMSwuNzc0Ljc3NFoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC01Ljk1MSAtMTU2LjQ2NikiIGZpbGw9IiNhZmFmYWYiLz4KICAgICAgPC9nPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==',
                                                      ),
                                                      width: 141.0,
                                                      height: 106.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      height: 106.0,
                                                      decoration:
                                                          BoxDecoration(),
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
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                final selectedMedia =
                                                                    await selectMediaWithSourceBottomSheet(
                                                                  context:
                                                                      context,
                                                                  allowPhoto:
                                                                      true,
                                                                  textColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .overlay0,
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
                                                                    selectedUploadedFiles = selectedMedia
                                                                        .map((m) => FFUploadedFile(
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
                                                                        (m) async => await uploadData(
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
                                                                    setState(
                                                                        () {
                                                                      _model.uploadedLocalFile =
                                                                          selectedUploadedFiles
                                                                              .first;
                                                                      _model.uploadedFileUrl =
                                                                          downloadUrls
                                                                              .first;
                                                                    });
                                                                  } else {
                                                                    setState(
                                                                        () {});
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
                                                                child:
                                                                    Container(
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
                                                                        offset: Offset(
                                                                            0.0,
                                                                            3.0),
                                                                        spreadRadius:
                                                                            2.0,
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFB29173),
                                                                      width:
                                                                          2.0,
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
                                                                        'gl8d4qy7' /* Upload Photo */,
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
                                                                            color:
                                                                                Color(0xFFEDEFEC),
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
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
                                                                      0xFFAFAFAF),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          6.0,
                                                                      color: Color(
                                                                          0x0000001A),
                                                                      offset: Offset(
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
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0xFFAFAFAF),
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
                                                                      'li9djfs7' /* Mint NFT */,
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
                                                                          color:
                                                                              Color(0xFFEDEFEC),
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 10.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 10.0)),
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
