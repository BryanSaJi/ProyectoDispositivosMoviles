import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'vista_creacion_metodo_pago_widget.dart'
    show VistaCreacionMetodoPagoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VistaCreacionMetodoPagoModel
    extends FlutterFlowModel<VistaCreacionMetodoPagoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ddTipoPago widget.
  String? ddTipoPagoValue;
  FormFieldController<String>? ddTipoPagoValueController;
  // State field(s) for txtNumeroTarjeta widget.
  FocusNode? txtNumeroTarjetaFocusNode;
  TextEditingController? txtNumeroTarjetaTextController;
  String? Function(BuildContext, String?)?
      txtNumeroTarjetaTextControllerValidator;
  String? _txtNumeroTarjetaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bqgabm7x' /* Field is required */,
      );
    }

    if (val.length < 16) {
      return FFLocalizations.of(context).getText(
        '5jqc4sze' /* The card number must be 16 dig... */,
      );
    }
    if (val.length > 16) {
      return 'Maximum 16 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtTitularTarjeta widget.
  FocusNode? txtTitularTarjetaFocusNode;
  TextEditingController? txtTitularTarjetaTextController;
  String? Function(BuildContext, String?)?
      txtTitularTarjetaTextControllerValidator;
  String? _txtTitularTarjetaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '67q4ywpk' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for txtFechaExpiracionDia widget.
  FocusNode? txtFechaExpiracionDiaFocusNode;
  TextEditingController? txtFechaExpiracionDiaTextController;
  String? Function(BuildContext, String?)?
      txtFechaExpiracionDiaTextControllerValidator;
  String? _txtFechaExpiracionDiaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '05oy3vdi' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        '16gv8av3' /* Not a valid day */,
      );
    }
    if (val.length > 2) {
      return 'Maximum 2 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtFechaExpiracionMes widget.
  FocusNode? txtFechaExpiracionMesFocusNode;
  TextEditingController? txtFechaExpiracionMesTextController;
  String? Function(BuildContext, String?)?
      txtFechaExpiracionMesTextControllerValidator;
  String? _txtFechaExpiracionMesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'osoxgttt' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'vexj3gmt' /* Not a valid month */,
      );
    }
    if (val.length > 2) {
      return 'Maximum 2 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtFechaExpiracionAnio widget.
  FocusNode? txtFechaExpiracionAnioFocusNode;
  TextEditingController? txtFechaExpiracionAnioTextController;
  String? Function(BuildContext, String?)?
      txtFechaExpiracionAnioTextControllerValidator;
  String? _txtFechaExpiracionAnioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hvsca0ar' /* Field is required */,
      );
    }

    if (val.length < 4) {
      return FFLocalizations.of(context).getText(
        'j4r63ojg' /* Not a valid year */,
      );
    }
    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtCodigoCVV widget.
  FocusNode? txtCodigoCVVFocusNode;
  TextEditingController? txtCodigoCVVTextController;
  String? Function(BuildContext, String?)? txtCodigoCVVTextControllerValidator;
  String? _txtCodigoCVVTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yfj9pzc5' /* Field is required */,
      );
    }

    if (val.length < 3) {
      return FFLocalizations.of(context).getText(
        '1mfmelj2' /* The CVV code is not valid */,
      );
    }
    if (val.length > 3) {
      return 'Maximum 3 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtCodigoPostal widget.
  FocusNode? txtCodigoPostalFocusNode;
  TextEditingController? txtCodigoPostalTextController;
  String? Function(BuildContext, String?)?
      txtCodigoPostalTextControllerValidator;
  String? _txtCodigoPostalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'xon3gj1m' /* Field is required */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        'b530c02c' /* The postal code is not valid */,
      );
    }
    if (val.length > 11) {
      return 'Maximum 11 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtNumeroTarjetaTextControllerValidator =
        _txtNumeroTarjetaTextControllerValidator;
    txtTitularTarjetaTextControllerValidator =
        _txtTitularTarjetaTextControllerValidator;
    txtFechaExpiracionDiaTextControllerValidator =
        _txtFechaExpiracionDiaTextControllerValidator;
    txtFechaExpiracionMesTextControllerValidator =
        _txtFechaExpiracionMesTextControllerValidator;
    txtFechaExpiracionAnioTextControllerValidator =
        _txtFechaExpiracionAnioTextControllerValidator;
    txtCodigoCVVTextControllerValidator = _txtCodigoCVVTextControllerValidator;
    txtCodigoPostalTextControllerValidator =
        _txtCodigoPostalTextControllerValidator;
  }

  @override
  void dispose() {
    txtNumeroTarjetaFocusNode?.dispose();
    txtNumeroTarjetaTextController?.dispose();

    txtTitularTarjetaFocusNode?.dispose();
    txtTitularTarjetaTextController?.dispose();

    txtFechaExpiracionDiaFocusNode?.dispose();
    txtFechaExpiracionDiaTextController?.dispose();

    txtFechaExpiracionMesFocusNode?.dispose();
    txtFechaExpiracionMesTextController?.dispose();

    txtFechaExpiracionAnioFocusNode?.dispose();
    txtFechaExpiracionAnioTextController?.dispose();

    txtCodigoCVVFocusNode?.dispose();
    txtCodigoCVVTextController?.dispose();

    txtCodigoPostalFocusNode?.dispose();
    txtCodigoPostalTextController?.dispose();
  }
}
