import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _recentSearches =
          prefs.getStringList('ff_recentSearches') ?? _recentSearches;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
  }

  String _searchActive2 = '';
  String get searchActive2 => _searchActive2;
  set searchActive2(String _value) {
    _searchActive2 = _value;
  }

  List<String> _recentSearches = [];
  List<String> get recentSearches => _recentSearches;
  set recentSearches(List<String> _value) {
    _recentSearches = _value;
    prefs.setStringList('ff_recentSearches', _value);
  }

  void addToRecentSearches(String _value) {
    _recentSearches.add(_value);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void removeFromRecentSearches(String _value) {
    _recentSearches.remove(_value);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void removeAtIndexFromRecentSearches(int _index) {
    _recentSearches.removeAt(_index);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void updateRecentSearchesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _recentSearches[_index] = updateFn(_recentSearches[_index]);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  String _LASTUPDATED = '';
  String get LASTUPDATED => _LASTUPDATED;
  set LASTUPDATED(String _value) {
    _LASTUPDATED = _value;
  }

  String _BARCODE = '';
  String get BARCODE => _BARCODE;
  set BARCODE(String _value) {
    _BARCODE = _value;
  }

  String _NAME = '';
  String get NAME => _NAME;
  set NAME(String _value) {
    _NAME = _value;
  }

  String _CATEGORY = '';
  String get CATEGORY => _CATEGORY;
  set CATEGORY(String _value) {
    _CATEGORY = _value;
  }

  String _LOWSTOCK = '';
  String get LOWSTOCK => _LOWSTOCK;
  set LOWSTOCK(String _value) {
    _LOWSTOCK = _value;
  }

  int _QUANTITY = 0;
  int get QUANTITY => _QUANTITY;
  set QUANTITY(int _value) {
    _QUANTITY = _value;
  }

  int _ItemCount = 0;
  int get ItemCount => _ItemCount;
  set ItemCount(int _value) {
    _ItemCount = _value;
  }

  bool _formBarcode = false;
  bool get formBarcode => _formBarcode;
  set formBarcode(bool _value) {
    _formBarcode = _value;
  }

  bool _timeStamp = false;
  bool get timeStamp => _timeStamp;
  set timeStamp(bool _value) {
    _timeStamp = _value;
  }

  bool _formDate = false;
  bool get formDate => _formDate;
  set formDate(bool _value) {
    _formDate = _value;
  }

  bool _formShortAnswer = false;
  bool get formShortAnswer => _formShortAnswer;
  set formShortAnswer(bool _value) {
    _formShortAnswer = _value;
  }

  bool _formParagraph = false;
  bool get formParagraph => _formParagraph;
  set formParagraph(bool _value) {
    _formParagraph = _value;
  }

  bool _formDropDown = false;
  bool get formDropDown => _formDropDown;
  set formDropDown(bool _value) {
    _formDropDown = _value;
  }

  bool _formCheckboxes = false;
  bool get formCheckboxes => _formCheckboxes;
  set formCheckboxes(bool _value) {
    _formCheckboxes = _value;
  }

  bool _formNumberCount = false;
  bool get formNumberCount => _formNumberCount;
  set formNumberCount(bool _value) {
    _formNumberCount = _value;
  }

  bool _formRadiobutton = false;
  bool get formRadiobutton => _formRadiobutton;
  set formRadiobutton(bool _value) {
    _formRadiobutton = _value;
  }

  bool _formGPSCoOrdinates = false;
  bool get formGPSCoOrdinates => _formGPSCoOrdinates;
  set formGPSCoOrdinates(bool _value) {
    _formGPSCoOrdinates = _value;
  }

  bool _formSecondaryBarcode = false;
  bool get formSecondaryBarcode => _formSecondaryBarcode;
  set formSecondaryBarcode(bool _value) {
    _formSecondaryBarcode = _value;
  }

  bool _formHidden = false;
  bool get formHidden => _formHidden;
  set formHidden(bool _value) {
    _formHidden = _value;
  }

  bool _formTag = false;
  bool get formTag => _formTag;
  set formTag(bool _value) {
    _formTag = _value;
  }

  bool _formImages = false;
  bool get formImages => _formImages;
  set formImages(bool _value) {
    _formImages = _value;
  }

  bool _formStock = false;
  bool get formStock => _formStock;
  set formStock(bool _value) {
    _formStock = _value;
  }

  bool _formPrice = false;
  bool get formPrice => _formPrice;
  set formPrice(bool _value) {
    _formPrice = _value;
  }

  bool _formWebLinks = false;
  bool get formWebLinks => _formWebLinks;
  set formWebLinks(bool _value) {
    _formWebLinks = _value;
  }

  bool _formName = false;
  bool get formName => _formName;
  set formName(bool _value) {
    _formName = _value;
  }

  int _updatedCountReport = 0;
  int get updatedCountReport => _updatedCountReport;
  set updatedCountReport(int _value) {
    _updatedCountReport = _value;
  }

  bool _sortByUpdateCount = false;
  bool get sortByUpdateCount => _sortByUpdateCount;
  set sortByUpdateCount(bool _value) {
    _sortByUpdateCount = _value;
  }

  bool _sortByLastUpdated = false;
  bool get sortByLastUpdated => _sortByLastUpdated;
  set sortByLastUpdated(bool _value) {
    _sortByLastUpdated = _value;
  }

  bool _sortByBarcode = false;
  bool get sortByBarcode => _sortByBarcode;
  set sortByBarcode(bool _value) {
    _sortByBarcode = _value;
  }

  bool _sortByName = false;
  bool get sortByName => _sortByName;
  set sortByName(bool _value) {
    _sortByName = _value;
  }

  bool _sortByDate = false;
  bool get sortByDate => _sortByDate;
  set sortByDate(bool _value) {
    _sortByDate = _value;
  }

  bool _sortByQuanity = false;
  bool get sortByQuanity => _sortByQuanity;
  set sortByQuanity(bool _value) {
    _sortByQuanity = _value;
  }

  bool _sortByCatogory = false;
  bool get sortByCatogory => _sortByCatogory;
  set sortByCatogory(bool _value) {
    _sortByCatogory = _value;
  }

  bool _PERMISSIONACTIVEORPENDING = false;
  bool get PERMISSIONACTIVEORPENDING => _PERMISSIONACTIVEORPENDING;
  set PERMISSIONACTIVEORPENDING(bool _value) {
    _PERMISSIONACTIVEORPENDING = _value;
  }

  String _STATUS = '';
  String get STATUS => _STATUS;
  set STATUS(String _value) {
    _STATUS = _value;
  }

  String _MEMBER = '';
  String get MEMBER => _MEMBER;
  set MEMBER(String _value) {
    _MEMBER = _value;
  }

  List<String> _AssignedEmail = [];
  List<String> get AssignedEmail => _AssignedEmail;
  set AssignedEmail(List<String> _value) {
    _AssignedEmail = _value;
  }

  void addToAssignedEmail(String _value) {
    _AssignedEmail.add(_value);
  }

  void removeFromAssignedEmail(String _value) {
    _AssignedEmail.remove(_value);
  }

  void removeAtIndexFromAssignedEmail(int _index) {
    _AssignedEmail.removeAt(_index);
  }

  void updateAssignedEmailAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _AssignedEmail[_index] = updateFn(_AssignedEmail[_index]);
  }

  String _SingleUserEmail = '';
  String get SingleUserEmail => _SingleUserEmail;
  set SingleUserEmail(String _value) {
    _SingleUserEmail = _value;
  }

  List<String> _permitioform = [];
  List<String> get permitioform => _permitioform;
  set permitioform(List<String> _value) {
    _permitioform = _value;
  }

  void addToPermitioform(String _value) {
    _permitioform.add(_value);
  }

  void removeFromPermitioform(String _value) {
    _permitioform.remove(_value);
  }

  void removeAtIndexFromPermitioform(int _index) {
    _permitioform.removeAt(_index);
  }

  void updatePermitioformAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _permitioform[_index] = updateFn(_permitioform[_index]);
  }

  bool _infoIcon = false;
  bool get infoIcon => _infoIcon;
  set infoIcon(bool _value) {
    _infoIcon = _value;
  }

  int _myAmount = 0;
  int get myAmount => _myAmount;
  set myAmount(int _value) {
    _myAmount = _value;
  }

  bool _eyeicon = false;
  bool get eyeicon => _eyeicon;
  set eyeicon(bool _value) {
    _eyeicon = _value;
  }

  bool _OpenDrawer = false;
  bool get OpenDrawer => _OpenDrawer;
  set OpenDrawer(bool _value) {
    _OpenDrawer = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
