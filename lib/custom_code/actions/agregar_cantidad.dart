// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math' as math;

Future<String> agregarCantidad(String cantidad) async {
  int numero = int.parse(cantidad) + 1;
  return numero.toString();
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
