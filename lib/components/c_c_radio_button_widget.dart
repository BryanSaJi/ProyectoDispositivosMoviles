import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'c_c_radio_button_model.dart';
export 'c_c_radio_button_model.dart';

class CCRadioButtonWidget extends StatefulWidget {
  const CCRadioButtonWidget({super.key});

  @override
  State<CCRadioButtonWidget> createState() => _CCRadioButtonWidgetState();
}

class _CCRadioButtonWidgetState extends State<CCRadioButtonWidget> {
  late CCRadioButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CCRadioButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowRadioButton(
      options: [
        FFLocalizations.of(context).getText(
          'zyw5k83w' /*  */,
        )
      ].toList(),
      onChanged: (val) => setState(() {}),
      controller: _model.radioButtonValueController ??=
          FormFieldController<String>(null),
      optionHeight: 32.0,
      textStyle: FlutterFlowTheme.of(context).labelMedium.override(
            fontFamily: 'Plus Jakarta Sans',
            letterSpacing: 0.0,
          ),
      selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Plus Jakarta Sans',
            letterSpacing: 0.0,
          ),
      buttonPosition: RadioButtonPosition.left,
      direction: Axis.vertical,
      radioButtonColor: FlutterFlowTheme.of(context).primary,
      inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
      toggleable: false,
      horizontalAlignment: WrapAlignment.start,
      verticalAlignment: WrapCrossAlignment.start,
    );
  }
}
