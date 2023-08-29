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
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'manual_entry_add_items_model.dart';
export 'manual_entry_add_items_model.dart';

class ManualEntryAddItemsWidget extends StatefulWidget {
  const ManualEntryAddItemsWidget({
    Key? key,
    this.formName,
    bool? barcode,
    bool? timeStamp,
    bool? name,
    this.stock,
    bool? image,
    bool? dropDown,
    bool? paraGraph,
    bool? radioButton,
    bool? gps,
    bool? secondaryBarcode,
    bool? hidden,
    bool? date,
    bool? shortAnswer,
    bool? tag,
    bool? price,
    this.webLinks,
    bool? numberCount,
    this.dropDownSelectionForm,
    this.caTOGORY,
    this.selectFORMdropdown,
  })  : this.barcode = barcode ?? false,
        this.timeStamp = timeStamp ?? false,
        this.name = name ?? false,
        this.image = image ?? false,
        this.dropDown = dropDown ?? false,
        this.paraGraph = paraGraph ?? false,
        this.radioButton = radioButton ?? false,
        this.gps = gps ?? false,
        this.secondaryBarcode = secondaryBarcode ?? false,
        this.hidden = hidden ?? false,
        this.date = date ?? false,
        this.shortAnswer = shortAnswer ?? false,
        this.tag = tag ?? false,
        this.price = price ?? false,
        this.numberCount = numberCount ?? false,
        super(key: key);

  final String? formName;
  final bool barcode;
  final bool timeStamp;
  final bool name;
  final bool? stock;
  final bool image;
  final bool dropDown;
  final bool paraGraph;
  final bool radioButton;
  final bool gps;
  final bool secondaryBarcode;
  final bool hidden;
  final bool date;
  final bool shortAnswer;
  final bool tag;
  final bool price;
  final bool? webLinks;
  final bool numberCount;
  final String? dropDownSelectionForm;
  final String? caTOGORY;
  final String? selectFORMdropdown;

  @override
  _ManualEntryAddItemsWidgetState createState() =>
      _ManualEntryAddItemsWidgetState();
}

class _ManualEntryAddItemsWidgetState extends State<ManualEntryAddItemsWidget> {
  late ManualEntryAddItemsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManualEntryAddItemsModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??=
        TextEditingController(text: getCurrentTimestamp.toString());
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
    _model.textController6 ??= TextEditingController();
    _model.textController7 ??= TextEditingController();
    _model.textController8 ??= TextEditingController();
    _model.textController9 ??= TextEditingController();
    _model.textController10 ??= TextEditingController();
    _model.textController11 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController2?.text = FFLocalizations.of(context).getText(
            'ibdrtwfo' /* ML Kit Barcode value */,
          );
          _model.textController7?.text = FFLocalizations.of(context).getText(
            'p1vyesvf' /* Paragraph */,
          );
          _model.textController9?.text = dateTimeFormat(
            'd/M/y',
            getCurrentTimestamp,
            locale: FFLocalizations.of(context).languageCode,
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
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
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
                        '8gp8s019' /* CANCEL */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
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
                  'chi7am0r' /* Add Item */,
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
                        context.pushNamed('Product_search');

                        await ProductRecord.collection.doc().set({
                          ...createProductRecordData(
                            name: _model.textController1.text,
                            barCode: _model.textController2.text,
                            quantity: _model.countControllerValue,
                            gpsCoOrdinates: _model.textController4.text,
                            stockControl: _model.textController5.text,
                            price: _model.textController6.text,
                            tags: _model.dropDownValue1,
                            catogory: _model.dropDownValue3,
                            images: _model.uploadedFileUrl,
                            paragraph: _model.textController7.text,
                            radioButton: true,
                            secondaryBarcode: _model.textController10.text,
                            hidden: _model.textController8.text,
                            webLinks: _model.textController11.text,
                            shortAnswer: _model.textController10.text,
                            dateinString: _model.textController3.text,
                            owner: currentUserEmail,
                          ),
                          'TimeStamp': FieldValue.serverTimestamp(),
                          'Date': FieldValue.serverTimestamp(),
                          'ListProducts': [_model.textController1.text],
                        });
                        FFAppState().ItemCount = FFAppState().ItemCount + 16;
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ba6yky0m' /* SAVE */,
                        ),
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
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
                child: StreamBuilder<List<FormsDataRecord>>(
                  stream: queryFormsDataRecord(
                    queryBuilder: (formsDataRecord) => formsDataRecord
                        .where('FormTitle', arrayContains: widget.formName),
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
                              height: 79.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'woow6auf' /* Name */,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'l3bpu3sc' /* Enter Item Name */,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .border,
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
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
                                    validator: _model.textController1Validator
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
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'v6v1f4t5' /* Barcode */,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                    height: 50.0,
                                    decoration: BoxDecoration(),
                                    child: TextFormField(
                                      controller: _model.textController2,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .border,
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF0000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
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
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                      keyboardType: TextInputType.number,
                                      validator: _model.textController2Validator
                                          .asValidator(context),
                                    ),
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
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'kl1hg46g' /* Time Stamp */,
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
                                  ),
                                  TextFormField(
                                    controller: _model.textController3,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'wcs8n917' /* 07/28/2022 10:46 AM */,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .border,
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                            signed: true, decimal: true),
                                    validator: _model.textController3Validator
                                        .asValidator(context),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (valueOrDefault<bool>(
                            columnFormsDataRecord?.numbercount,
                            false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 79.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'mr32nka5' /* Quantity */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: Container(
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .quantity,
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .quantity,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: FlutterFlowCountController(
                                          decrementIconBuilder: (enabled) =>
                                              FaIcon(
                                            FontAwesomeIcons.minus,
                                            color: enabled
                                                ? Color(0xFFEB2020)
                                                : Color(0xFFEEEEEE),
                                            size: 15.0,
                                          ),
                                          incrementIconBuilder: (enabled) =>
                                              FaIcon(
                                            FontAwesomeIcons.plus,
                                            color: enabled
                                                ? Color(0xFFEB2020)
                                                : Color(0xFFEEEEEE),
                                            size: 15.0,
                                          ),
                                          countBuilder: (count) => Text(
                                            count.toString(),
                                            style: TextStyle(
                                              fontFamily: 'SF Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          count: _model.countControllerValue ??=
                                              FFAppState().QUANTITY,
                                          updateCount: (count) => setState(() =>
                                              _model.countControllerValue =
                                                  count),
                                          stepSize: 2,
                                          minimum: 0,
                                        ),
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
                          if (valueOrDefault<bool>(
                            columnFormsDataRecord?.gpsCordinates,
                            false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 233.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '8spw7ekp' /* GPS Coordinate */,
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
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 1.0, 0.0, 10.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.textController4,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      currentUserLocationValue
                                                          ?.toString(),
                                                  hintText:
                                                      currentUserLocationValue
                                                          ?.toString(),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .border,
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
                                                      color: Color(0xFFFF0000),
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
                                                      color: Color(0xFFFF0000),
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
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                keyboardType:
                                                    const TextInputType
                                                        .numberWithOptions(
                                                        signed: true,
                                                        decimal: true),
                                                validator: _model
                                                    .textController4Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'lcmmblcc' /* [Google Maps  Link URL] */,
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
                          if (valueOrDefault<bool>(
                            columnFormsDataRecord?.stocks,
                            false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 150.0,
                                decoration: BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'p6bsrj09' /* Stock Control */,
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
                                                'qt791mq7' /* Current Stock */,
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
                                                      _model.textController5,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '1zaspjxn' /* 0 Quantity */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
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
                                                      .bodyMedium,
                                                  validator: _model
                                                      .textController5Validator
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
                                                'p9oe39fn' /* Choose In/Out */,
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
                                                'ju35gpg5' /* Quantity */,
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
                                        thickness: 1.0,
                                        color:
                                            FlutterFlowTheme.of(context).border,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (valueOrDefault<bool>(
                            columnFormsDataRecord?.price,
                            false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  31.0, 30.0, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 92.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'qbwr4etw' /* Price */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
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
                                                    'i1io2ks1' /* United States Dollar $ */,
                                                  ),
                                                ),
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mlzyisfx' /* Albania Lek (Lek) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'dv7yf3qf' /* Afghanistan Afghani 	؋ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xrwfyzjj' /* Argentina Peso $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ncx2k6xo' /* Aruba Guilder ƒ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7jo0l539' /* Australia Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'hep6c6ng' /* Azerbaijan Manat ₼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'lilr3wla' /* Bahamas Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'u44xos10' /* Barbados Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'p4jk31x2' /* Belarus Ruble Br */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qxi35j37' /* Belize Dollar BZ$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '859gy4u4' /* Bermuda Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1zyq45cl' /* Bolivia Bolíviano $b */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9pz12na5' /* Bosnia and Herzegovina Convert... */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wjc217l8' /* Botswana Pula (P) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'hgyanqjw' /* Bulgaria Lev лв */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    's4ha05iy' /* Brazil Real R$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'fqp3skwi' /* Brunei Darussalam Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9gqpyfhv' /* Cambodia Riel ៛ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'eoasijxv' /* Canada Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'rruswnkv' /* Cayman Islands Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ohljdxlh' /* Chile Peso $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ooxbpn3h' /* China Yuan Renminbi ¥ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '498n972l' /* Colombia Peso $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'do90dqma' /* Costa Rica Colon ₡ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'cxvl5kq5' /* Croatia Kuna (kn) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'cqf4gn4l' /* Cuba Peso ₱ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ff8b2m8c' /* Czech Republic Koruna Kč */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'tpzwe4qs' /* Denmark Krone (kr) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'elz7uwej' /* Dominican Republic Peso RD$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uh9ru8ul' /* East Caribbean Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4xo9t3mg' /* Egypt Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3vn49359' /* El Salvador Colon $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qbusurhl' /* Euro Member Countries € */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wydh6e5m' /* Falkland Islands (Malvinas) Po... */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'pfd16zmn' /* Fiji Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6rqcoxdc' /* Ghana Cedi ¢ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ey706xmg' /* Gibraltar Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qki3zg1d' /* Guatemala Quetzal (Q) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5v3fpdpp' /* Guernsey Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'lolsn7r6' /* Guyana Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'kvetd5xr' /* Honduras Lempira (L) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'd832dk4g' /* Hong Kong Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'madx7e84' /* Hungary Forint (Ft) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'lbkamx1l' /* Iceland Krona (kr) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'l2v85k24' /* India Rupee ₹ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'l6x975gl' /* Indonesia Rupiah (Rp) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'i08mkqa2' /* Iran Rial ﷼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '04f1ptdq' /* Isle of Man Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9x09kyuv' /* Israel Shekel ₪ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qckpgnul' /* Jamaica Dollar J$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9atuqixo' /* Japan Yen ¥ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jyctoeak' /* Jersey Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'i0gd6o6o' /* Kazakhstan Tenge лв */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ss2t5c6p' /* Korea (North) Won ₩ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uz1qqtp5' /* Korea (South) Won ₩ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ji636yh8' /* Kyrgyzstan Som лв */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'kaqbyvfu' /* Laos Kip ₭ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jfh81xtc' /* Lebanon Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'f5j9d43n' /* Liberia Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'b61w49oj' /* Macedonia Denar ден */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wsnqakbr' /* Malaysia Ringgit (RM) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '90ddd9os' /* Mauritius Rupee (₨) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'krm64kpi' /* Mexico Peso $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6qgbvhca' /* Mongolia Tughrik ₮ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'redrhcj5' /* Moroccan-dirham  د.إ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qnsopqn0' /* Mozambique Metical (MT) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4rk2vciu' /* Namibia Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '398jj0xs' /* Nepal Rupee (₨) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0z6yxt6m' /* Netherlands Antilles Guilder ƒ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'o0uqu28w' /* New Zealand Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'i8rx2u66' /* Nicaragua Cordoba C$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5mdsc8rp' /* Nigeria Naira ₦ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'nqgdc48d' /* Norway Krone (kr) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'sx8hhq9w' /* Oman Rial ﷼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ctn868ts' /* Pakistan Rupee (₨) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6s2d8stt' /* Panama Balboa B/. */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'odclfisy' /* Paraguay Guarani (Gs) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'aaueauje' /* Peru Sol S/. */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6ei01ptz' /* Philippines Peso ₱ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'nezxig87' /* Poland Zloty (zł) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0o89wg80' /* Qatar Riyal ﷼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1bzx6a0l' /* Romania Leu (lei) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3ybtwpil' /* Russia Ruble ₽ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'cs504yp5' /* Saint Helena Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bt5uz2w9' /* Saudi Arabia Riyal ﷼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'gakvqhkw' /* Serbia Dinar Дин. */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'iz16m230' /* Seychelles Rupee (₨) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1e5zesuh' /* Singapore Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'paexbxg0' /* Solomon Islands Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '08e61oy5' /* Somalia Shilling (S) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bv0ffv34' /* South Africa Rand (R) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'emvjoe9n' /* Sri Lanka Rupee (Rs) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'rj4qilbf' /* Sweden Krona (kr) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8d9c4bfu' /* Switzerland Franc (CHF) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xmee0fly' /* Suriname Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'te1r2z1s' /* Syria Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xmi80x0t' /* Taiwan New Dollar NT$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ikrk0cg5' /* Thailand Baht ฿ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'hv0vontd' /* Trinidad and Tobago Dollar TT$ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jem8wevq' /* Turkey Lira ₺ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jj8rw7dn' /* Tuvalu Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '31jlbk9r' /* Ukraine Hryvnia ₴ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'x8bm9th1' /* UAE-Dirham د.إ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'twjj0tfg' /* United Kingdom Pound £ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3f9wubn2' /* United States Dollar $ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'za8vnnfs' /* Uruguay Peso $U */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'pe6mmosz' /* Uzbekistan Som лв */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vrs0wrml' /* Venezuela Bolívar Bs */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2y124xja' /* Viet Nam Dong ₫ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'pxtinns7' /* Yemen Rial ﷼ */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'gxwgizt5' /* Zimbabwe Dollar Z$ */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue1 = val),
                                                width: 240.0,
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
                                                  'jb3d92ss' /* Select Currency */,
                                                ),
                                                icon: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Color(0xFFEB2020),
                                                  size: 15.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .search,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 0.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 4.0, 12.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Container(
                                                width: 60.0,
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController6,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          useGoogleFonts: false,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
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
                                                  textAlign: TextAlign.start,
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
                          if (valueOrDefault<bool>(
                            columnFormsDataRecord?.tags,
                            false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 83.0,
                                decoration: BoxDecoration(),
                                child: StreamBuilder<List<FormsDataRecord>>(
                                  stream: queryFormsDataRecord(
                                    queryBuilder: (formsDataRecord) =>
                                        formsDataRecord.where('Tags',
                                            isEqualTo:
                                                columnFormsDataRecord?.tags),
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
                                    List<FormsDataRecord>
                                        columnFormsDataRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final columnFormsDataRecord =
                                        columnFormsDataRecordList.isNotEmpty
                                            ? columnFormsDataRecordList.first
                                            : null;
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '8s72v07f' /* Tag */,
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
                                        FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController2 ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'vsadp8ac' /* Option 1 */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '4sw9iac2' /* Option 2 */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '6paqjck1' /* Option 3 */,
                                            )
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.dropDownValue2 = val),
                                          height: 55.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .background,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Color(0xFFEB2020),
                                            size: 15.0,
                                          ),
                                          elevation: 2.0,
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
                                          color: FlutterFlowTheme.of(context)
                                              .border,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          if (valueOrDefault<bool>(
                            columnFormsDataRecord?.dropDown,
                            false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'z5j8avhl' /* Category */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownValueController3 ??=
                                              FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          '9xylrp2n' /* Style */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wd101zh3' /* Furniture */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ovo1xwrq' /* Gear */,
                                        )
                                      ],
                                      onChanged: (val) => setState(
                                          () => _model.dropDownValue3 = val),
                                      height: 55.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color(0xFFEB2020),
                                        size: 15.0,
                                      ),
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
                          if (valueOrDefault<bool>(
                            columnFormsDataRecord?.paragraph,
                            false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 63.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'i6gt63ur' /* Paragraph */,
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
                                    Expanded(
                                      child: TextFormField(
                                        controller: _model.textController7,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '9ev0nsi8' /* 07/28/2022 10:46 AM */,
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
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 88.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'lf0m29s2' /* Radio Button */,
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
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: FlutterFlowCheckboxGroup(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'p91bisch' /* Radio Button */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '34bcpkh8' /* Unselect */,
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
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 63.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'cba7n1iu' /* Hidden */,
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
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .border,
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF0000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
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
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                      keyboardType: TextInputType.number,
                                      validator: _model.textController8Validator
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
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 79.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '1unomu0x' /* Date */,
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
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .border,
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF0000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
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
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                      keyboardType: TextInputType.number,
                                      validator: _model.textController9Validator
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
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 79.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'fi0cvu00' /* Short Answer */,
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
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .border,
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF0000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
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
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
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
                          if (valueOrDefault<bool>(
                            columnFormsDataRecord?.webLinks,
                            false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 79.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '51bzcv0p' /* Web Links */,
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
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .border,
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF0000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
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
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro',
                                            color: FlutterFlowTheme.of(context)
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
                                  31.0, 18.5, 31.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 161.8,
                                decoration: BoxDecoration(),
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
                                          '7fkjo5pf' /* Images */,
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
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  width: 141.0,
                                                  height: 106.0,
                                                  decoration: BoxDecoration(
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
                                                  ),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      _model.uploadedFileUrl,
                                                      'data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNDEiIGhlaWdodD0iMTA2IiB2aWV3Qm94PSIwIDAgMTQxIDEwNiI+CiAgPGcgaWQ9Ikdyb3VwXzY1NSIgZGF0YS1uYW1lPSJHcm91cCA2NTUiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC03NTQgLTI3OTApIj4KICAgIDxnIGlkPSJSZWN0YW5nbGVfNDc2IiBkYXRhLW5hbWU9IlJlY3RhbmdsZSA0NzYiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDc1NCAyNzkwKSIgZmlsbD0iI2Y1ZjVmNSIgc3Ryb2tlPSIjZDNkM2QzIiBzdHJva2Utd2lkdGg9IjEiPgogICAgICA8cmVjdCB3aWR0aD0iMTQxIiBoZWlnaHQ9IjEwNiIgcng9IjEwIiBzdHJva2U9Im5vbmUiLz4KICAgICAgPHJlY3QgeD0iMC41IiB5PSIwLjUiIHdpZHRoPSIxNDAiIGhlaWdodD0iMTA1IiByeD0iOS41IiBmaWxsPSJub25lIi8+CiAgICA8L2c+CiAgICA8ZyBpZD0iR3JvdXBfNjU0IiBkYXRhLW5hbWU9Ikdyb3VwIDY1NCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMxOS42OTUgMTQuOTM4KSI+CiAgICAgIDxnIGlkPSJHcm91cF82NTMiIGRhdGEtbmFtZT0iR3JvdXAgNjUzIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxMTIxIDI4MDkuNTYyKSI+CiAgICAgICAgPHBhdGggaWQ9IlBhdGhfMzY5NCIgZGF0YS1uYW1lPSJQYXRoIDM2OTQiIGQ9Ik04NiwzMDMuMjNsNy44MDYtNy44MDYsMy42MzIsMy45TDEwOS45NTgsMjg3bDEwLjExNywxMC4wMjd2MTAuODRIODZaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNzkuODEzIC0yNzYuOTEyKSIgZmlsbD0iI2FmYWZhZiIvPgogICAgICAgIDxjaXJjbGUgaWQ9IkVsbGlwc2VfMjc5IiBkYXRhLW5hbWU9IkVsbGlwc2UgMjc5IiBjeD0iNC43NTEiIGN5PSI0Ljc1MSIgcj0iNC43NTEiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDYuMDU1IDUuODgxKSIgZmlsbD0iI2FmYWZhZiIvPgogICAgICAgIDxwYXRoIGlkPSJQYXRoXzM2OTUiIGRhdGEtbmFtZT0iUGF0aCAzNjk1IiBkPSJNNDguMywxNTYuNDY2SDkuOTkzYTQuMDQyLDQuMDQyLDAsMCwwLTQuMDQyLDQuMDQydjI4LjkxNWE0LjA0Miw0LjA0MiwwLDAsMCw0LjA0Miw0LjA0Mkg0OC4zYTQuMDQyLDQuMDQyLDAsMCwwLDQuMDQyLTQuMDQyVjE2MC41MDhBNC4wNDIsNC4wNDIsMCwwLDAsNDguMywxNTYuNDY2Wm0uOTMzLDMzLjMzM2EuNzc0Ljc3NCwwLDAsMS0uNzc0Ljc3NEg5Ljg3OUEuNzc0Ljc3NCwwLDAsMSw5LjEsMTg5LjhWMTYwLjNhLjc3NC43NzQsMCwwLDEsLjc3NC0uNzc0SDQ4LjQ1N2EuNzc0Ljc3NCwwLDAsMSwuNzc0Ljc3NFoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC01Ljk1MSAtMTU2LjQ2NikiIGZpbGw9IiNhZmFmYWYiLz4KICAgICAgPC9nPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==',
                                                    ),
                                                    width: 141.0,
                                                    height: 106.0,
                                                    fit: BoxFit.scaleDown,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
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
                                                        flex: 1,
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
                                                                    'gcwkvgnh' /* Upload Photo */,
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
                                                      Expanded(
                                                        flex: 1,
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
                                                                  'smr85els' /* Mint NFT */,
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
                                                    ].divide(
                                                        SizedBox(height: 10.0)),
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
  }
}
