import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sort_by_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'product_search_model.dart';
export 'product_search_model.dart';

class ProductSearchWidget extends StatefulWidget {
  const ProductSearchWidget({
    Key? key,
    this.emailowner,
  }) : super(key: key);

  final String? emailowner;

  @override
  _ProductSearchWidgetState createState() => _ProductSearchWidgetState();
}

class _ProductSearchWidgetState extends State<ProductSearchWidget> {
  late ProductSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductSearchModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<ProductRecord>>(
      stream: queryProductRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).whiteBack,
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
        List<ProductRecord> productSearchProductRecordList = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).whiteBack,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).appBar,
            automaticallyImplyLeading: false,
            title: Text(
              FFLocalizations.of(context).getText(
                'n3ygt417' /* PRODUCTS */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'SF Pro',
                    color: FlutterFlowTheme.of(context).secondary,
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderWidth: 1.0,
                                        buttonSize: 30.0,
                                        icon: Icon(
                                          Icons.loop,
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          FFAppState().update(() {
                                            FFAppState().LASTUPDATED = '';
                                            FFAppState().BARCODE = '';
                                            FFAppState().NAME = '';
                                            FFAppState().CATEGORY = '';
                                            FFAppState().LOWSTOCK = '';
                                            FFAppState().QUANTITY = 0;
                                          });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 10.0),
                                        child: Container(
                                          width: 280.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .search,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 30.0,
                                                  icon: Icon(
                                                    Icons.search,
                                                    color: Color(0xFF888888),
                                                    size: 16.29,
                                                  ),
                                                  onPressed: () async {
                                                    setState(() {
                                                      FFAppState()
                                                          .searchActive = true;
                                                    });
                                                  },
                                                ),
                                                Expanded(
                                                  child: Autocomplete<String>(
                                                    initialValue:
                                                        TextEditingValue(),
                                                    optionsBuilder:
                                                        (textEditingValue) {
                                                      if (textEditingValue
                                                              .text ==
                                                          '') {
                                                        return const Iterable<
                                                            String>.empty();
                                                      }
                                                      return [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xiu0efqi' /* Option 1 */,
                                                        )
                                                      ].where((option) {
                                                        final lowercaseOption =
                                                            option
                                                                .toLowerCase();
                                                        return lowercaseOption
                                                            .contains(
                                                                textEditingValue
                                                                    .text
                                                                    .toLowerCase());
                                                      });
                                                    },
                                                    optionsViewBuilder:
                                                        (context, onSelected,
                                                            options) {
                                                      return AutocompleteOptionsList(
                                                        textFieldKey:
                                                            _model.textFieldKey,
                                                        textController: _model
                                                            .textController!,
                                                        options:
                                                            options.toList(),
                                                        onSelected: onSelected,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        textHighlightStyle:
                                                            TextStyle(),
                                                        elevation: 4.0,
                                                        optionBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        optionHighlightColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        maxHeight: 200.0,
                                                      );
                                                    },
                                                    onSelected:
                                                        (String selection) {
                                                      setState(() => _model
                                                              .textFieldSelectedOption =
                                                          selection);
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                    },
                                                    fieldViewBuilder: (
                                                      context,
                                                      textEditingController,
                                                      focusNode,
                                                      onEditingComplete,
                                                    ) {
                                                      _model.textController =
                                                          textEditingController;
                                                      return TextFormField(
                                                        key:
                                                            _model.textFieldKey,
                                                        controller:
                                                            textEditingController,
                                                        focusNode: focusNode,
                                                        onEditingComplete:
                                                            onEditingComplete,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          '_model.textController',
                                                          Duration(
                                                              milliseconds:
                                                                  2000),
                                                          () async {
                                                            setState(() {
                                                              _model.simpleSearchResults1 =
                                                                  TextSearch(
                                                                productSearchProductRecordList
                                                                    .map(
                                                                      (record) =>
                                                                          TextSearchItem(
                                                                              record,
                                                                              [
                                                                            record.name!,
                                                                            record.barCode!,
                                                                            record.gpsCoOrdinates!,
                                                                            record.stockControl!,
                                                                            record.price!,
                                                                            record.tags!,
                                                                            record.catogory!,
                                                                            record.paragraph!,
                                                                            record.secondaryBarcode!,
                                                                            record.hidden!,
                                                                            record.webLinks!,
                                                                            record.shortAnswer!,
                                                                            record.dateinString!
                                                                          ]),
                                                                    )
                                                                    .toList(),
                                                              )
                                                                      .search(_model
                                                                          .textController
                                                                          .text)
                                                                      .map((r) =>
                                                                          r.object)
                                                                      .toList();
                                                              ;
                                                            });
                                                            setState(() {
                                                              FFAppState()
                                                                      .searchActive =
                                                                  true;
                                                            });
                                                          },
                                                        ),
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
                                                            .textControllerValidator
                                                            .asValidator(
                                                                context),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderWidth: 1.0,
                                        buttonSize: 30.0,
                                        icon: Icon(
                                          FFIcons.ksortAmountDown,
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            barrierColor: Color(0x00000000),
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height: 850.0,
                                                  child: SortByWidget(),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context)
                                              .customColor3,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<UserRecord> containerUserRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final containerUserRecord =
                                    containerUserRecordList.isNotEmpty
                                        ? containerUserRecordList.first
                                        : null;
                                return Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  child: StreamBuilder<List<ProductRecord>>(
                                    stream: queryProductRecord(
                                      queryBuilder: (productRecord) =>
                                          productRecord.where('Quantity',
                                              isLessThanOrEqualTo: 5),
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
                                      List<ProductRecord>
                                          columnProductRecordList =
                                          snapshot.data!;
                                      final columnProductRecord =
                                          columnProductRecordList.isNotEmpty
                                              ? columnProductRecordList.first
                                              : null;
                                      return SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            StreamBuilder<List<ProductRecord>>(
                                              stream: queryProductRecord(
                                                queryBuilder: (productRecord) =>
                                                    productRecord.where('owner',
                                                        isEqualTo:
                                                            currentUserEmail),
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
                                                List<ProductRecord>
                                                    columnProductRecordList =
                                                    snapshot.data!;
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      columnProductRecordList
                                                          .length,
                                                      (columnIndex) {
                                                    final columnProductRecord =
                                                        columnProductRecordList[
                                                            columnIndex];
                                                    return Visibility(
                                                      visible: !FFAppState()
                                                          .searchActive,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .whiteBack,
                                                        ),
                                                        child: FutureBuilder<
                                                            ProductRecord>(
                                                          future: ProductRecord
                                                              .getDocumentOnce(
                                                                  columnProductRecord!
                                                                      .reference),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                            final storeListViewProductRecord =
                                                                snapshot.data!;
                                                            return InkWell(
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
                                                                context.pushNamed(
                                                                    'manualEntry_editItems');
                                                              },
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 103.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .whiteBack,
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .boaderLight,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            1.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(0.0),
                                                                                    child: CachedNetworkImage(
                                                                                      fadeInDuration: Duration(milliseconds: 500),
                                                                                      fadeOutDuration: Duration(milliseconds: 500),
                                                                                      imageUrl: storeListViewProductRecord.images,
                                                                                      width: 54.0,
                                                                                      height: 54.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              1.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      storeListViewProductRecord.barCode,
                                                                                      'No barcode',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'SF Pro',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      storeListViewProductRecord.dateinString,
                                                                                      'No Date',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'SF Pro',
                                                                                          fontSize: 12.0,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      storeListViewProductRecord.timeStamp?.toString(),
                                                                                      '27/07/2023',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'SF Pro',
                                                                                          fontSize: 12.0,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    Text(
                                                                                      valueOrDefault<String>(
                                                                                        storeListViewProductRecord.name,
                                                                                        'No Name',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                            fontFamily: 'SF Pro',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 13.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'va1q0vdr' /* Stock low */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'SF Pro',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 13.0,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      columnProductRecord.catogory,
                                                                                      'No Catogory',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'SF Pro',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 13.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Text(
                                                                                      storeListViewProductRecord.quantity.toString(),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'SF Pro',
                                                                                            fontSize: 13.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.chevron_right_outlined,
                                                                                color: FlutterFlowTheme.of(context).iconColor,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                            if (FFAppState().searchActive)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 100.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .whiteBack,
                                                  ),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final productResult = _model
                                                          .simpleSearchResults1
                                                          .toList();
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount: productResult
                                                            .length,
                                                        itemBuilder: (context,
                                                            productResultIndex) {
                                                          final productResultItem =
                                                              productResult[
                                                                  productResultIndex];
                                                          return StreamBuilder<
                                                              ProductRecord>(
                                                            stream: ProductRecord
                                                                .getDocument(
                                                                    productResultItem
                                                                        .reference),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
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
                                                              final storeListViewProductRecord =
                                                                  snapshot
                                                                      .data!;
                                                              return Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 106.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .border,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: CachedNetworkImage(
                                                                                    fadeInDuration: Duration(milliseconds: 500),
                                                                                    fadeOutDuration: Duration(milliseconds: 500),
                                                                                    imageUrl: 'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxGVVJOSVRVUkV8ZW58MHx8fHwxNjg5ODg1NDgzfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                                                                    width: 54.0,
                                                                                    height: 54.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              1.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      productResultItem.barCode,
                                                                                      'No Barcode',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'SF Pro',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        productResultItem.dateinString,
                                                                                        'No Date',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'SF Pro',
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'kefq6uvc' /* Hello World */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'SF Pro',
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      valueOrDefault<String>(
                                                                                        productResultItem.name,
                                                                                        'No Name',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                            fontFamily: 'SF Pro',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 13.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '64njpom4' /* Stock */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'SF Pro',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 13.0,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      productResultItem.catogory,
                                                                                      'No Catogory',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'SF Pro',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 13.0,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        storeListViewProductRecord.quantity.toString(),
                                                                                        'No Quantity',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'SF Pro',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 13.0,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.chevron_right_outlined,
                                                                                color: FlutterFlowTheme.of(context).accent1,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      );
                                                    },
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: ClipRRect(
                  child: Container(
                    width: double.infinity,
                    height: 99.0,
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
                              Material(
                                color: Colors.transparent,
                                elevation: 3.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 75.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 6.0,
                                        color: Color(0x1000000F),
                                        offset: Offset(0.0, -3.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                ),
                              ),
                            ],
                          ),
                          StreamBuilder<List<AddStaffRecord>>(
                            stream: queryAddStaffRecord(
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
                                        FlutterFlowTheme.of(context)
                                            .customColor3,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<AddStaffRecord> rowAddStaffRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final rowAddStaffRecord =
                                  rowAddStaffRecordList.isNotEmpty
                                      ? rowAddStaffRecordList.first
                                      : null;
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.6),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('Home');
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Divider(
                                              thickness: 1.0,
                                              color: Color(0xFFF50E0E),
                                            ),
                                            SvgPicture.asset(
                                              Theme.of(context).brightness ==
                                                      Brightness.dark
                                                  ? 'assets/images/navigation-04.svg'
                                                  : 'assets/images/icon_all-04.svg',
                                              width: 19.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'kqsv9psq' /* Home */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          fontSize: 11.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.6),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? 'assets/images/navigation-01.svg'
                                                : 'assets/images/Group_734.svg',
                                            width: 20.0,
                                            height: 19.8,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '232r55jq' /* Products */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'SF Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    fontSize: 11.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -0.75),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 25.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.barcodeAction =
                                                      await FlutterBarcodeScanner
                                                          .scanBarcode(
                                                    '#C62828', // scanning line color
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dknttidf' /* Cancel */,
                                                    ), // cancel button text
                                                    true, // whether to show the flash icon
                                                    ScanMode.QR,
                                                  );

                                                  await queryProductRecordOnce()
                                                      .then(
                                                        (records) => _model
                                                                .simpleSearchResults2 =
                                                            TextSearch(
                                                          records
                                                              .map(
                                                                (record) =>
                                                                    TextSearchItem(
                                                                        record,
                                                                        [
                                                                      record
                                                                          .barCode!
                                                                    ]),
                                                              )
                                                              .toList(),
                                                        )
                                                                .search(
                                                                    FFAppState()
                                                                        .BARCODE)
                                                                .map((r) =>
                                                                    r.object)
                                                                .take(2)
                                                                .toList(),
                                                      )
                                                      .onError((_, __) => _model
                                                              .simpleSearchResults2 =
                                                          [])
                                                      .whenComplete(() =>
                                                          setState(() {}));

                                                  setState(() {});
                                                },
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 4.0,
                                                  shape: const CircleBorder(),
                                                  child: Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFEB2020),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Stack(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -0.0),
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        4.0,
                                                                        0.0),
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 45.0,
                                                              icon: Icon(
                                                                FFIcons.kscan,
                                                                color: Colors
                                                                    .white,
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
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.6),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if ((valueOrDefault(
                                                      currentUserDocument
                                                          ?.userRole,
                                                      '') ==
                                                  'Admin') ||
                                              (valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.adminpermision,
                                                      false) ==
                                                  true) ||
                                              (valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.userpermition,
                                                      false) ==
                                                  true)) {
                                            context.pushNamed('report');
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'You Dont Have permition To acces this',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          }
                                        },
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
                                              width: 19.0,
                                              height: 22.0,
                                              fit: BoxFit.cover,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '756h2ac2' /* Report */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          fontSize: 11.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.6),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              'settings-notifications');
                                        },
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'fr49yi86' /* Notification */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SF Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          fontSize: 11.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
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
              ),
            ],
          ),
        );
      },
    );
  }
}
