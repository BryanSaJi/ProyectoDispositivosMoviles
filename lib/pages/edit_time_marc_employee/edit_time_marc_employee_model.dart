import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'edit_time_marc_employee_widget.dart' show EditTimeMarcEmployeeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditTimeMarcEmployeeModel
    extends FlutterFlowModel<EditTimeMarcEmployeeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? currentTimeMarcCount;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TimeMarcRecord? currentTimeMarc;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextFieldInMarc widget.
  FocusNode? textFieldInMarcFocusNode;
  TextEditingController? textFieldInMarcTextController;
  String? Function(BuildContext, String?)?
      textFieldInMarcTextControllerValidator;
  // State field(s) for TextFieldOutMarc widget.
  FocusNode? textFieldOutMarcFocusNode;
  TextEditingController? textFieldOutMarcTextController;
  String? Function(BuildContext, String?)?
      textFieldOutMarcTextControllerValidator;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldInMarcFocusNode?.dispose();
    textFieldInMarcTextController?.dispose();

    textFieldOutMarcFocusNode?.dispose();
    textFieldOutMarcTextController?.dispose();
  }
}
