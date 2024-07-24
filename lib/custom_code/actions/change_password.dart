// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<int> changePassword(String currentPassword, String newPassword) async {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final currentUser = auth.currentUser;

  if (currentUser == null) {
    //return Future.error('No hay un usuario actualmente conectado');
    return 91;
  }

  // Reautenticar al usuario
  try {
    final cred = EmailAuthProvider.credential(
      email: currentUser.email!,
      password: currentPassword,
    );
    await currentUser.reauthenticateWithCredential(cred);
  } on FirebaseAuthException catch (e) {
    //print('Error en la reautenticación: ${e.message}');
    //return Future.error('Error en la reautenticación: ${e.message}');
    return 92;
  }

  // Intentar cambiar la contraseña
  try {
    await currentUser.updatePassword(newPassword);
    return 1; // Password change successful
  } on FirebaseAuthException catch (e) {
    if (e.code == 'requires-recent-login') {
      //print('El usuario necesita iniciar sesión recientemente');
      //return Future.error('El usuario necesita iniciar sesión recientemente');
      return 93;
    } else {
      //print('Error al cambiar la contraseña: ${e.message}');
      //return Future.error('Error al cambiar la contraseña: ${e.message}');
      return 94;
    }
  }
}
