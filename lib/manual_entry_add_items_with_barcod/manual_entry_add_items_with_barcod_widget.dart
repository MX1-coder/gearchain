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
import 'manual_entry_add_items_with_barcod_model.dart';
export 'manual_entry_add_items_with_barcod_model.dart';
import 'package:qr_mobile_vision/qr_camera.dart';



class qrcodeScanner extends StatefulWidget {
  const qrcodeScanner({
    Key? key,
    this.formName,
    String? qrCode,
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
        this.qrCode = qrCode ?? '',
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
  final String? qrCode;
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
  qrcodeScannerState createState() => qrcodeScannerState();
}

class qrcodeScannerState extends State<qrcodeScanner> {
  // ab wo waale parameter agli screen pe pass karna he

  String qr = "Unknown";
  bool camState = true;
  bool dirState = false;

  @override
  void initState() {
    super.initState();
    //camState = true;
  }

  void _onQRCodeDetected(String? code) {
    setState(() {
      qr = code ?? "Unknown";
      camState = false;
    });

    if (qr != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ManualEntryAddItemsWithBarcodWidget(qrCode: qr),
          settings: RouteSettings(arguments: {'qr': qr}),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Back"),
                Switch(
                  value: dirState,
                  onChanged: (val) => setState(() => dirState = val),
                ),
                Text("Front"),
              ],
            ),
            Expanded(
              child: camState
                  ? Center(
                      child: SizedBox(
                        width: 300.0,
                        height: 300.0,
                        child: QrCamera(
                          onError: (context, error) => Text(
                            error.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          cameraDirection: dirState
                              ? CameraDirection.FRONT
                              : CameraDirection.BACK,
                          qrCodeCallback: _onQRCodeDetected,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromARGB(255, 237, 41, 74),
                                width: 3.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Center(child: Text("Camera inactive")),
            ),
            Text("QR Code: $qr"),
          ],
        ),
      ),
    );
  }
}

class ManualEntryAddItemsWithBarcodWidget extends StatefulWidget {
   final String qrCode;
  const ManualEntryAddItemsWithBarcodWidget({
    Key? key,
    this.formName,
    this.barcode,
        required this.qrCode,
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
  _ManualEntryAddItemsWithBarcodWidgetState createState() =>
      _ManualEntryAddItemsWithBarcodWidgetState();
}

class _ManualEntryAddItemsWithBarcodWidgetState
    extends State<ManualEntryAddItemsWithBarcodWidget> {
  late ManualEntryAddItemsWithBarcodModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManualEntryAddItemsWithBarcodModel());

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
            'ytutnid5' /* 1 */,
          );
          _model.textController7?.text = FFLocalizations.of(context).getText(
            'ilofywx4' /* Paragraph */,
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
        List<FormsDataRecord> manualEntryAddItemsWithBarcodFormsDataRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final manualEntryAddItemsWithBarcodFormsDataRecord =
            manualEntryAddItemsWithBarcodFormsDataRecordList.isNotEmpty
                ? manualEntryAddItemsWithBarcodFormsDataRecordList.first
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
                              'rlqqalj7' /* CANCEL */,
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
                      'fvn6hmtu' /* Add Item */,
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
                                        manualEntryAddItemsWithBarcodFormsDataRecord!
                                            .formsData!)
                                    .set(createNewProductRecordData());
                              },
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'q1m3bgoz' /* SAVE */,
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
                                              'r4qlb3j7' /* Name */,
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
                                            '5zuxyqwy' /* Enter Item Name */,
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
                                              'wvb6gimd' /* Barcode */,
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
                                                'w0mgrpvf' /* Please Enter Barcode */,
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
                                                'wzpxdgib' /* Timestamp */,
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
                                          'z54wnolw' /* Quantity */,
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
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Container(
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
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
                                                  : FlutterFlowTheme.of(context)
                                                      .grayIcon,
                                              size: 15.0,
                                            ),
                                            incrementIconBuilder: (enabled) =>
                                                FaIcon(
                                              FontAwesomeIcons.plus,
                                              color: enabled
                                                  ? Color(0xFFEB2020)
                                                  : FlutterFlowTheme.of(context)
                                                      .grayIcon,
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
                                        color:
                                            FlutterFlowTheme.of(context).border,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
                                      final columnFormsDataRecord =
                                          columnFormsDataRecordList.isNotEmpty
                                              ? columnFormsDataRecordList.first
                                              : null;
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'vcdx6ufj' /* GPS Coordinate */,
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
                                                      CrossAxisAlignment.start,
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
                                                              color: FlutterFlowTheme
                                                                      .of(context)
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
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                                decimal: true),
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                    'hftuwfnh' /* [Google Maps  Link URL] */,
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
                                      final columnFormsDataRecord =
                                          columnFormsDataRecordList.isNotEmpty
                                              ? columnFormsDataRecordList.first
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
                                                'qcxpt477' /* Stock Control */,
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '03obhmfx' /* Current Stock */,
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
                                                            .fromSTEB(72.0, 0.0,
                                                                0.0, 0.0),
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
                                                          'd1s43p5z' /* 0 Quantity */,
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
                                                      validator: _model
                                                          .textController5Validator
                                                          .asValidator(context),
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9w2bigmj' /* Choose In */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '87pcd9yc' /* Choose  out */,
                                                    )
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () => _model
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
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'xez1afcp' /* Choose In/Out */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 24.0,
                                                  ),
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
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
                                                mainAxisSize: MainAxisSize.max,
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
                                                          'ew1zb1px' /* Quantity */,
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
                                                                      .primaryText,
                                                                  fontSize:
                                                                      12.0,
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
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
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
                                                                (count) => Text(
                                                              count.toString(),
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 12.0,
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
                                              isEqualTo:
                                                  columnFormsDataRecord?.price),
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
                                              'mn41k009' /* Price */,
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
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(31.0, 10.0,
                                                          31.0, 0.0),
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController6,
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
                                                              Color(0xFFAAAAAA),
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownValueController2 ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropDownValue2 ??=
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '146zwo47' /* United States Dollar $ */,
                                                    ),
                                                  ),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'f1oxi92k' /* Albania Lek (Lek) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'i7quaj4s' /* Afghanistan Afghani 	؋ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e98k3c60' /* Argentina Peso $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '22x83rgk' /* Aruba Guilder ƒ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5lerqg7w' /* Australia Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3ikujbtd' /* Azerbaijan Manat ₼ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3borpmfz' /* Bahamas Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7qe6yvv1' /* Barbados Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pu80bkkk' /* Belarus Ruble Br */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5iijaprp' /* Belize Dollar BZ$ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kjb388ag' /* Bermuda Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tu04kg86' /* Bolivia Bolíviano $b */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xm5tt4wu' /* Bosnia and Herzegovina Convert... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6b0v2ge0' /* Botswana Pula (P) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jbwbfbd2' /* Bulgaria Lev лв */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zgmi6fr9' /* Brazil Real R$ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r3omttcq' /* Brunei Darussalam Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ykzlnuag' /* Cambodia Riel ៛ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xklzckj2' /* Canada Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zy2pvj9q' /* Cayman Islands Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4g5027he' /* Chile Peso $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ol73anxt' /* China Yuan Renminbi ¥ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dpxzyrbo' /* Colombia Peso $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cdaa0ig6' /* Costa Rica Colon ₡ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8m5gfen1' /* Croatia Kuna (kn) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'eooemjlf' /* Cuba Peso ₱ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9m7fb6da' /* Czech Republic Koruna Kč */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vkm3q54r' /* Denmark Krone (kr) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ullahglm' /* Dominican Republic Peso RD$ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qgvyxwyl' /* East Caribbean Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cx97wivn' /* Egypt Pound £ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dp1wb75q' /* El Salvador Colon $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xw1joy0k' /* Euro Member Countries € */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3mn3vm5q' /* Falkland Islands (Malvinas) Po... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tharwqz9' /* Fiji Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v0c7d2qm' /* Ghana Cedi ¢ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9y3j3atc' /* Gibraltar Pound £ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'x4fh5qo2' /* Guatemala Quetzal (Q) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '44pbpah5' /* Guernsey Pound £ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bghpuu4p' /* Guyana Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8pa7n1ne' /* Honduras Lempira (L) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'y29dd5ms' /* Hong Kong Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6s35rk99' /* Hungary Forint (Ft) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fv9th810' /* Iceland Krona (kr) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'up8ssrdq' /* India Rupee ₹ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mgv7250m' /* Indonesia Rupiah (Rp) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sh7ch0ij' /* Iran Rial ﷼ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qu16gwjj' /* Isle of Man Pound £ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lq8yxle7' /* Israel Shekel ₪ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v4xraq6e' /* Jamaica Dollar J$ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5nr8mgq6' /* Japan Yen ¥ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lzzwum2y' /* Jersey Pound £ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tz52f2dz' /* Kazakhstan Tenge лв */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bwuocgmn' /* Korea (North) Won ₩ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mcg3gswa' /* Korea (South) Won ₩ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8wueem3k' /* Kyrgyzstan Som лв */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mrg4ybop' /* Laos Kip ₭ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l00wrfjl' /* Lebanon Pound £ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9bvtk50v' /* Liberia Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c2r5r8tc' /* Macedonia Denar ден */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o7ei1qtb' /* Malaysia Ringgit (RM) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dtjqzmgt' /* Mauritius Rupee (₨) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'q1fuh2gh' /* Mexico Peso $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '94c40ntw' /* Mongolia Tughrik ₮ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e51qg4rr' /* Moroccan-dirham  د.إ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kdar6or5' /* Mozambique Metical (MT) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'g2m6t9zk' /* Namibia Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0vs5ayth' /* Nepal Rupee (₨) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ior3wsk5' /* Netherlands Antilles Guilder ƒ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '14xqyrn6' /* New Zealand Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nljc1mg5' /* Nicaragua Cordoba C$ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'x2thh2hz' /* Nigeria Naira ₦ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5hmhfdf7' /* Norway Krone (kr) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6cujuw8o' /* Oman Rial ﷼ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'txmaqgty' /* Pakistan Rupee (₨) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'figs83ik' /* Panama Balboa B/. */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a8q66iqz' /* Paraguay Guarani (Gs) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wjmernr6' /* Peru Sol S/. */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ci5ehwlt' /* Philippines Peso ₱ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n3z23c1n' /* Poland Zloty (zł) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '720vrxmx' /* Qatar Riyal ﷼ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dzqewrwm' /* Romania Leu (lei) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jsv3iikg' /* Russia Ruble ₽ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'md3o94kl' /* Saint Helena Pound £ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7mcrcwpi' /* Saudi Arabia Riyal ﷼ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sqrxnhy6' /* Serbia Dinar Дин. */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd0sq4a4n' /* Seychelles Rupee (₨) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8axp450s' /* Singapore Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bnwwbgjn' /* Solomon Islands Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fv0wcexj' /* Somalia Shilling (S) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z8ez49wu' /* South Africa Rand (R) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u0cit46r' /* Sri Lanka Rupee (Rs) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z8ccjtyx' /* Sweden Krona (kr) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zogmei24' /* Switzerland Franc (CHF) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mkwbo1i5' /* Suriname Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '72zbotwq' /* Syria Pound £ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uax2hbvt' /* Taiwan New Dollar NT$ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7fcfxwro' /* Thailand Baht ฿ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7mv8po95' /* Trinidad and Tobago Dollar TT$ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2fo5udf1' /* Turkey Lira ₺ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yz8oedvh' /* Tuvalu Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ij710s61' /* Ukraine Hryvnia ₴ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r4gmk5ck' /* UAE-Dirham د.إ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '12su8w4r' /* United Kingdom Pound £ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e2ck6460' /* United States Dollar $ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vd66333l' /* Uruguay Peso $U */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j78x6rth' /* Uzbekistan Som лв */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h1n912qw' /* Venezuela Bolívar Bs */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zxq2e4t1' /* Viet Nam Dong ₫ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rhckyv75' /* Yemen Rial ﷼ */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'f5ept9vp' /* Zimbabwe Dollar Z$ */,
                                                    )
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .dropDownValue2 =
                                                          val),
                                                  width: 322.0,
                                                  height: 50.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SF Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'rrbl8ce9' /* Select Currency */,
                                                  ),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: Color(0xFFEB2020),
                                                    size: 15.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
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
                                            ],
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
                                    31.0, 10.0, 23.0, 0.0),
                                child: Container(
                                  width: double.infinity,
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
                                              '2t6d55ao' /* Tag */,
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
                                          FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController3 ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'mjxzpc14' /* Option 1 */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5rquami0' /* Option 2 */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '09qrqeof' /* Option 3 */,
                                              )
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.dropDownValue3 = val),
                                            height: 55.0,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                          'ik7cz7ma' /* Category */,
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
                                              '484d758j' /* Style */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'vlvviykq' /* Furniture */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'y70tsn2i' /* Gear */,
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
                                            FFLocalizations.of(context).getText(
                                              'ci5qp4ky' /* Paragraph */,
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
                                      if (widget.paraGraph ?? true)
                                        TextFormField(
                                          controller: _model.textController7,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'ps2w49c1' /* 07/28/2022 10:46 AM */,
                                            ),
                                            hintStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SF Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
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
                                            FFLocalizations.of(context).getText(
                                              'ackyl8qk' /* Radio Button */,
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
                                                '4gk021jt' /* Radio Button 1 */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'auui5wd3' /* Unselect */,
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
                                            FFLocalizations.of(context).getText(
                                              'xao29obr' /* Hidden */,
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
                                      if (valueOrDefault<bool>(
                                        widget.hidden,
                                        false,
                                      ))
                                        TextFormField(
                                          controller: _model.textController8,
                                          obscureText: false,
                                          decoration: InputDecoration(
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
                                            FFLocalizations.of(context).getText(
                                              'erzcs4rt' /* Date */,
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
                                      if (valueOrDefault<bool>(
                                        widget.date,
                                        false,
                                      ))
                                        TextFormField(
                                          controller: _model.textController9,
                                          obscureText: false,
                                          decoration: InputDecoration(
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
                                            FFLocalizations.of(context).getText(
                                              'bhubb6wg' /* Name */,
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
                                      if (valueOrDefault<bool>(
                                        columnFormsDataRecord?.barcode,
                                        false,
                                      ))
                                        TextFormField(
                                          controller: _model.textController10,
                                          obscureText: false,
                                          decoration: InputDecoration(
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
                                            FFLocalizations.of(context).getText(
                                              '1c7qh9he' /* Web Links */,
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
                                      if (valueOrDefault<bool>(
                                        columnFormsDataRecord?.barcode,
                                        false,
                                      ))
                                        TextFormField(
                                          controller: _model.textController11,
                                          obscureText: false,
                                          decoration: InputDecoration(
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
                                            's94gryjj' /* Images */,
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
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                      color: Color(0xFFD3D3D3),
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
                                                                  setState(() {
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
                                                                      '114kqjiz' /* Upload Photo */,
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
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'mf7af3ec' /* Mint NFT */,
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
