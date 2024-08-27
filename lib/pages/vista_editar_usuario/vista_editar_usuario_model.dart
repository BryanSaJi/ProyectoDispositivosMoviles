import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'vista_editar_usuario_widget.dart' show VistaEditarUsuarioWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VistaEditarUsuarioModel
    extends FlutterFlowModel<VistaEditarUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for UserNameTextField widget.
  FocusNode? userNameTextFieldFocusNode1;
  TextEditingController? userNameTextFieldTextController1;
  String? Function(BuildContext, String?)?
      userNameTextFieldTextController1Validator;
  // State field(s) for UserNameTextField widget.
  FocusNode? userNameTextFieldFocusNode2;
  TextEditingController? userNameTextFieldTextController2;
  String? Function(BuildContext, String?)?
      userNameTextFieldTextController2Validator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for PhoneTextField widget.
  FocusNode? phoneTextFieldFocusNode;
  TextEditingController? phoneTextFieldTextController;
  String? Function(BuildContext, String?)?
      phoneTextFieldTextControllerValidator;
  // State field(s) for RolTextField widget.
  FocusNode? rolTextFieldFocusNode;
  TextEditingController? rolTextFieldTextController;
  String? Function(BuildContext, String?)? rolTextFieldTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userNameTextFieldFocusNode1?.dispose();
    userNameTextFieldTextController1?.dispose();

    userNameTextFieldFocusNode2?.dispose();
    userNameTextFieldTextController2?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    phoneTextFieldFocusNode?.dispose();
    phoneTextFieldTextController?.dispose();

    rolTextFieldFocusNode?.dispose();
    rolTextFieldTextController?.dispose();
  }
}
