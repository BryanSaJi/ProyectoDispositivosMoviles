import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'c_c_cantidad_deseada_model.dart';
export 'c_c_cantidad_deseada_model.dart';

class CCCantidadDeseadaWidget extends StatefulWidget {
  const CCCantidadDeseadaWidget({
    super.key,
    this.cantidad,
  });

  final int? cantidad;

  @override
  State<CCCantidadDeseadaWidget> createState() =>
      _CCCantidadDeseadaWidgetState();
}

class _CCCantidadDeseadaWidgetState extends State<CCCantidadDeseadaWidget> {
  late CCCantidadDeseadaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CCCantidadDeseadaModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).grey3,
        borderRadius: BorderRadius.circular(30.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).grey3,
          width: 2.0,
        ),
      ),
      child: FlutterFlowCountController(
        decrementIconBuilder: (enabled) => Icon(
          FFIcons.kminus,
          color: enabled
              ? FlutterFlowTheme.of(context).primaryText
              : FlutterFlowTheme.of(context).lightGrey,
          size: 20.0,
        ),
        incrementIconBuilder: (enabled) => Icon(
          Icons.add,
          color: enabled
              ? FlutterFlowTheme.of(context).primaryText
              : FlutterFlowTheme.of(context).lightGrey,
          size: 20.0,
        ),
        countBuilder: (count) => Text(
          count.toString(),
          style: FlutterFlowTheme.of(context).labelLarge.override(
                fontFamily: 'Plus Jakarta Sans',
                letterSpacing: 0.0,
              ),
        ),
        count: _model.countControllerValue ??= widget!.cantidad!,
        updateCount: (count) =>
            setState(() => _model.countControllerValue = count),
        stepSize: 1,
        contentPadding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
      ),
    );
  }
}
