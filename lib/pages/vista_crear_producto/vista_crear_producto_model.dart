import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'vista_crear_producto_widget.dart' show VistaCrearProductoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VistaCrearProductoModel
    extends FlutterFlowModel<VistaCrearProductoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldTextController;
  String? Function(BuildContext, String?)? nameTextFieldTextControllerValidator;
  String? _nameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wxst5nwh' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for PriceTextField widget.
  FocusNode? priceTextFieldFocusNode;
  TextEditingController? priceTextFieldTextController;
  String? Function(BuildContext, String?)?
      priceTextFieldTextControllerValidator;
  String? _priceTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'c1b72uue' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for QuantityTextField widget.
  FocusNode? quantityTextFieldFocusNode;
  TextEditingController? quantityTextFieldTextController;
  String? Function(BuildContext, String?)?
      quantityTextFieldTextControllerValidator;
  String? _quantityTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gl6sq534' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for DescriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;
  String? _descriptionTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'x34lynde' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for TimeTextField widget.
  FocusNode? timeTextFieldFocusNode;
  TextEditingController? timeTextFieldTextController;
  String? Function(BuildContext, String?)? timeTextFieldTextControllerValidator;
  String? _timeTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '17tuta4l' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for SaborTextField widget.
  FocusNode? saborTextFieldFocusNode;
  TextEditingController? saborTextFieldTextController;
  String? Function(BuildContext, String?)?
      saborTextFieldTextControllerValidator;
  String? _saborTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'a5q2x18l' /* Campo Requerido */,
      );
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    nameTextFieldTextControllerValidator =
        _nameTextFieldTextControllerValidator;
    priceTextFieldTextControllerValidator =
        _priceTextFieldTextControllerValidator;
    quantityTextFieldTextControllerValidator =
        _quantityTextFieldTextControllerValidator;
    descriptionTextFieldTextControllerValidator =
        _descriptionTextFieldTextControllerValidator;
    timeTextFieldTextControllerValidator =
        _timeTextFieldTextControllerValidator;
    saborTextFieldTextControllerValidator =
        _saborTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    nameTextFieldFocusNode?.dispose();
    nameTextFieldTextController?.dispose();

    priceTextFieldFocusNode?.dispose();
    priceTextFieldTextController?.dispose();

    quantityTextFieldFocusNode?.dispose();
    quantityTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();

    timeTextFieldFocusNode?.dispose();
    timeTextFieldTextController?.dispose();

    saborTextFieldFocusNode?.dispose();
    saborTextFieldTextController?.dispose();
  }
}
