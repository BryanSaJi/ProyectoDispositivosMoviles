import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'vista_creacion_cuenta_widget.dart' show VistaCreacionCuentaWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VistaCreacionCuentaModel
    extends FlutterFlowModel<VistaCreacionCuentaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  String? _txtNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9w49szqy' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for txtLastName widget.
  FocusNode? txtLastNameFocusNode;
  TextEditingController? txtLastNameTextController;
  String? Function(BuildContext, String?)? txtLastNameTextControllerValidator;
  String? _txtLastNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'j6jvvo1v' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  String? _emailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lxj0p4lt' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for txtPhone widget.
  FocusNode? txtPhoneFocusNode;
  TextEditingController? txtPhoneTextController;
  String? Function(BuildContext, String?)? txtPhoneTextControllerValidator;
  String? _txtPhoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cr4870fs' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  String? _passwordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'a607ie4e' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for txtPasswordConf widget.
  FocusNode? txtPasswordConfFocusNode;
  TextEditingController? txtPasswordConfTextController;
  late bool txtPasswordConfVisibility;
  String? Function(BuildContext, String?)?
      txtPasswordConfTextControllerValidator;
  String? _txtPasswordConfTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's2jnx2wl' /* Field is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtNameTextControllerValidator = _txtNameTextControllerValidator;
    txtLastNameTextControllerValidator = _txtLastNameTextControllerValidator;
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
    txtPhoneTextControllerValidator = _txtPhoneTextControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldTextControllerValidator =
        _passwordTextFieldTextControllerValidator;
    txtPasswordConfVisibility = false;
    txtPasswordConfTextControllerValidator =
        _txtPasswordConfTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtLastNameFocusNode?.dispose();
    txtLastNameTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    txtPhoneFocusNode?.dispose();
    txtPhoneTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    txtPasswordConfFocusNode?.dispose();
    txtPasswordConfTextController?.dispose();
  }
}
