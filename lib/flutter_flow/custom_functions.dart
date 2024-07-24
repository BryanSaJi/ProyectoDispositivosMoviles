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
