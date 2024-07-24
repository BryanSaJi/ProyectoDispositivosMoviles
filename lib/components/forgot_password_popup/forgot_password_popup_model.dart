import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'forgot_password_popup_widget.dart' show ForgotPasswordPopupWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordPopupModel
    extends FlutterFlowModel<ForgotPasswordPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtEmailPassword widget.
  FocusNode? txtEmailPasswordFocusNode;
  TextEditingController? txtEmailPasswordTextController;
  String? Function(BuildContext, String?)?
      txtEmailPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEmailPasswordFocusNode?.dispose();
    txtEmailPasswordTextController?.dispose();
  }
}
