import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bs_cambiar_metodo_pago_model.dart';
export 'bs_cambiar_metodo_pago_model.dart';

class BsCambiarMetodoPagoWidget extends StatefulWidget {
  const BsCambiarMetodoPagoWidget({super.key});

  @override
  State<BsCambiarMetodoPagoWidget> createState() =>
      _BsCambiarMetodoPagoWidgetState();
}

class _BsCambiarMetodoPagoWidgetState extends State<BsCambiarMetodoPagoWidget> {
  late BsCambiarMetodoPagoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsCambiarMetodoPagoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).grey3,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 60.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primaryText,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 30.0,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        icon: Icon(
                          FFIcons.kx,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 14.0,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'vdt5chjy' /* Payment Methods */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StreamBuilder<List<PaymentMethodRecord>>(
                      stream: queryPaymentMethodRecord(
                        queryBuilder: (paymentMethodRecord) =>
                            paymentMethodRecord.where(
                          'MethodBuyer',
                          isEqualTo: currentUserReference,
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: SpinKitFadingGrid(
                                color: FlutterFlowTheme.of(context).primary,
                                size: 40.0,
                              ),
                            ),
                          );
                        }
                        List<PaymentMethodRecord>
                            lvMetodosPagoPaymentMethodRecordList =
                            snapshot.data!;

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount:
                              lvMetodosPagoPaymentMethodRecordList.length,
                          itemBuilder: (context, lvMetodosPagoIndex) {
                            final lvMetodosPagoPaymentMethodRecord =
                                lvMetodosPagoPaymentMethodRecordList[
                                    lvMetodosPagoIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 10.0, 24.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'vistaPago',
                                    queryParameters: {
                                      'prmMetodoPago': serializeParam(
                                        lvMetodosPagoPaymentMethodRecord
                                            .reference,
                                        ParamType.DocumentReference,
                                      ),
                                      'prmNombreMetodoPago': serializeParam(
                                        lvMetodosPagoPaymentMethodRecord
                                            .methodDescription,
                                        ParamType.String,
                                      ),
                                      'prmNumeroTarjeta': serializeParam(
                                        lvMetodosPagoPaymentMethodRecord
                                            .methodCardNumber,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(14.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .grey3,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Icon(
                                            Icons.payment,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      lvMetodosPagoPaymentMethodRecord
                                                          .methodDescription,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      lvMetodosPagoPaymentMethodRecord
                                                          .methodCardNumber,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('vistaCreacionMetodoPago');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 32.0,
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).grey3,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.add_circle_outline,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4ujur370' /* Add Payment Method */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ].divide(SizedBox(height: 30.0)),
            ),
          ),
        ),
      ],
    );
  }
}
