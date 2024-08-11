import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
}
