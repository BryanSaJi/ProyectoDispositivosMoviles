import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_product_widget.dart' show EditProductWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProductModel extends FlutterFlowModel<EditProductWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  String? _txtNombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'dfeexwx5' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;
  String? _txtPrecioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '67q4ywpk' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;
  String? _txtCantidadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '05oy3vdi' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  String? _txtDescripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'osoxgttt' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtTiempo widget.
  FocusNode? txtTiempoFocusNode;
  TextEditingController? txtTiempoTextController;
  String? Function(BuildContext, String?)? txtTiempoTextControllerValidator;
  String? _txtTiempoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hvsca0ar' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtSabor widget.
  FocusNode? txtSaborFocusNode;
  TextEditingController? txtSaborTextController;
  String? Function(BuildContext, String?)? txtSaborTextControllerValidator;
  String? _txtSaborTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yfj9pzc5' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    txtPrecioTextControllerValidator = _txtPrecioTextControllerValidator;
    txtCantidadTextControllerValidator = _txtCantidadTextControllerValidator;
    txtDescripcionTextControllerValidator =
        _txtDescripcionTextControllerValidator;
    txtTiempoTextControllerValidator = _txtTiempoTextControllerValidator;
    txtSaborTextControllerValidator = _txtSaborTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();

    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();

    txtTiempoFocusNode?.dispose();
    txtTiempoTextController?.dispose();

    txtSaborFocusNode?.dispose();
    txtSaborTextController?.dispose();
  }
}
