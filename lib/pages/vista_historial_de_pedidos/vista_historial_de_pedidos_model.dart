import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bs_informacion_ordenes_widget.dart';
import '/components/navigator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'vista_historial_de_pedidos_widget.dart'
    show VistaHistorialDePedidosWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VistaHistorialDePedidosModel
    extends FlutterFlowModel<VistaHistorialDePedidosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    navigatorModel.dispose();
  }
}
