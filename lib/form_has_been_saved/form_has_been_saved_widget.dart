import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_has_been_saved_model.dart';
export 'form_has_been_saved_model.dart';

class FormHasBeenSavedWidget extends StatefulWidget {
  const FormHasBeenSavedWidget({
    Key? key,
    this.formName,
    bool? barcode,
    this.timestamp,
    this.name,
    this.stock,
    this.image,
    this.dropdown,
    this.paragraph,
    this.radiobutton,
    this.gps,
    this.secondaryBarcode,
    this.hidden,
    this.date,
    this.shortAnswer,
    this.tagS,
    this.price,
    this.webLinks,
    this.numberCount,
  })  : this.barcode = barcode ?? false,
        super(key: key);

  final String? formName;
  final bool barcode;
  final bool? timestamp;
  final bool? name;
  final bool? stock;
  final bool? image;
  final bool? dropdown;
  final bool? paragraph;
  final bool? radiobutton;
  final bool? gps;
  final bool? secondaryBarcode;
  final bool? hidden;
  final bool? date;
  final bool? shortAnswer;
  final bool? tagS;
  final bool? price;
  final bool? webLinks;
  final bool? numberCount;

  @override
  _FormHasBeenSavedWidgetState createState() => _FormHasBeenSavedWidgetState();
}

class _FormHasBeenSavedWidgetState extends State<FormHasBeenSavedWidget> {
  late FormHasBeenSavedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormHasBeenSavedModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.goNamed(
        'Home',
        queryParameters: {
          'formName': serializeParam(
            widget.formName,
            ParamType.String,
          ),
          'barcode': serializeParam(
            widget.barcode,
            ParamType.bool,
          ),
          'timeStamp': serializeParam(
            widget.timestamp,
            ParamType.bool,
          ),
          'name': serializeParam(
            widget.name,
            ParamType.bool,
          ),
          'stock': serializeParam(
            widget.stock,
            ParamType.bool,
          ),
          'image': serializeParam(
            widget.image,
            ParamType.bool,
          ),
          'dropDown': serializeParam(
            widget.dropdown,
            ParamType.bool,
          ),
          'paraGraph': serializeParam(
            widget.paragraph,
            ParamType.bool,
          ),
          'radioButton': serializeParam(
            widget.radiobutton,
            ParamType.bool,
          ),
          'gpsCo': serializeParam(
            widget.gps,
            ParamType.bool,
          ),
          'secondaryBarcode': serializeParam(
            widget.secondaryBarcode,
            ParamType.bool,
          ),
          'hidden': serializeParam(
            widget.hidden,
            ParamType.bool,
          ),
          'date': serializeParam(
            widget.date,
            ParamType.bool,
          ),
          'shortAnswer': serializeParam(
            widget.shortAnswer,
            ParamType.bool,
          ),
          'tag': serializeParam(
            widget.tagS,
            ParamType.bool,
          ),
          'price': serializeParam(
            widget.price,
            ParamType.bool,
          ),
          'webLinks': serializeParam(
            widget.webLinks,
            ParamType.bool,
          ),
          'numberCount': serializeParam(
            widget.numberCount,
            ParamType.bool,
          ),
          'eMail': serializeParam(
            '',
            ParamType.String,
          ),
        }.withoutNulls,
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 800),
          ),
        },
      );
    });
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 810.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/urn_aaid_sc_US_f6ad6703-e421-4909-b6b6-3470dcd4cb97.png',
                  ).image,
                ),
              ),
              child: Image.asset(
                'assets/images/urn_aaid_sc_US_f6ad6703-e421-4909-b6b6-3470dcd4cb97.png',
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
