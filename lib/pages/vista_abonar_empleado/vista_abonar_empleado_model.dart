import '/backend/backend.dart';
import '/components/bs_cambiar_metodo_pago_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'vista_abonar_empleado_widget.dart' show VistaAbonarEmpleadoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VistaAbonarEmpleadoModel
    extends FlutterFlowModel<VistaAbonarEmpleadoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for cbSinpe widget.
  bool? cbSinpeValue;
  // State field(s) for txtcurrentPassword widget.
  FocusNode? txtcurrentPasswordFocusNode;
  TextEditingController? txtcurrentPasswordTextController;
  String? Function(BuildContext, String?)?
      txtcurrentPasswordTextControllerValidator;
  // State field(s) for cbTarjeta widget.
  bool? cbTarjetaValue;
  // State field(s) for txtSalario widget.
  FocusNode? txtSalarioFocusNode;
  TextEditingController? txtSalarioTextController;
  String? Function(BuildContext, String?)? txtSalarioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtcurrentPasswordFocusNode?.dispose();
    txtcurrentPasswordTextController?.dispose();

    txtSalarioFocusNode?.dispose();
    txtSalarioTextController?.dispose();
  }
}
