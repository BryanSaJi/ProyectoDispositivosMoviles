import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int funcTotalCarrito(
  List<int> subtotal,
  List<int> cantidadTotal,
) {
  int total = 0;

  for (var i = 0; i < subtotal.length; i++) {
    total += subtotal.elementAt(i) * cantidadTotal.elementAt(i);
  }
  return total;
}

int funcSubtotal(
  int precio,
  int cantidad,
) {
  return precio * cantidad;
}

double? totalTime(
  DateTime? inMarc,
  DateTime? outMarc,
) {
  if (inMarc == null || inMarc == 0) {
    return null; // Retorna null si no hay inMarc.
  }

  // Si outMarc es null, usa la fecha y hora actual.
  final effectiveOutMarc = outMarc ?? DateTime.now();

  // Calcula la diferencia de tiempo.
  final difference = effectiveOutMarc.difference(inMarc);

  // Convierte la diferencia en horas decimales.
  final hoursDecimal = difference.inMinutes / 60.0;

  // Retorna la diferencia en horas con decimales.
  return hoursDecimal;
}

String? funcCalcularPagoEmpleado(
  String salario,
  String tiempo,
) {
  int totalAPagar = int.parse(salario) * int.parse(tiempo);
  return totalAPagar.toString();
}

bool? funcEvitarZero(String parametro) {
  bool bandera = false;

  if (int.parse(parametro) > 0) {
    bandera = true;
  }
  return bandera;
}

int? funcSumatoriaVentas(List<int> totales) {
  int total = 0;

  for (var i = 0; i < totales.length; i++) {
    total += totales.elementAt(i);
  }
  return total;
}
