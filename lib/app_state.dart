import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectedEmployeePayment1 =
          prefs.getBool('ff_selectedEmployeePayment1') ??
              _selectedEmployeePayment1;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _selected = false;
  bool get selected => _selected;
  set selected(bool value) {
    _selected = value;
  }

  bool _busquedaActiva = false;
  bool get busquedaActiva => _busquedaActiva;
  set busquedaActiva(bool value) {
    _busquedaActiva = value;
  }

  DateTime? _InMarc;
  DateTime? get InMarc => _InMarc;
  set InMarc(DateTime? value) {
    _InMarc = value;
  }

  DateTime? _OutMarc;
  DateTime? get OutMarc => _OutMarc;
  set OutMarc(DateTime? value) {
    _OutMarc = value;
  }

  String _adminEmail = '';
  String get adminEmail => _adminEmail;
  set adminEmail(String value) {
    _adminEmail = value;
  }

  int _IdCountMarc = 0;
  int get IdCountMarc => _IdCountMarc;
  set IdCountMarc(int value) {
    _IdCountMarc = value;
  }

  bool _selectedEmployeePayment1 = false;
  bool get selectedEmployeePayment1 => _selectedEmployeePayment1;
  set selectedEmployeePayment1(bool value) {
    _selectedEmployeePayment1 = value;
    prefs.setBool('ff_selectedEmployeePayment1', value);
  }

  bool _selectedEmployeePayment2 = false;
  bool get selectedEmployeePayment2 => _selectedEmployeePayment2;
  set selectedEmployeePayment2(bool value) {
    _selectedEmployeePayment2 = value;
  }

  double _totalTime = 0.0;
  double get totalTime => _totalTime;
  set totalTime(double value) {
    _totalTime = value;
  }

  DateTime? _defDate;
  DateTime? get defDate => _defDate;
  set defDate(DateTime? value) {
    _defDate = value;
  }

  DateTime? _inMarcCollection;
  DateTime? get inMarcCollection => _inMarcCollection;
  set inMarcCollection(DateTime? value) {
    _inMarcCollection = value;
  }

  DateTime? _outMarcColletion;
  DateTime? get outMarcColletion => _outMarcColletion;
  set outMarcColletion(DateTime? value) {
    _outMarcColletion = value;
  }
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
