import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home_page/home_page_widget.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailField widget.
  FocusNode? emailFieldFocusNode1;
  TextEditingController? emailFieldController1;
  String? Function(BuildContext, String?)? emailFieldController1Validator;
  // State field(s) for emailField widget.
  FocusNode? emailFieldFocusNode2;
  TextEditingController? emailFieldController2;
  String? Function(BuildContext, String?)? emailFieldController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    emailFieldFocusNode1?.dispose();
    emailFieldController1?.dispose();

    emailFieldFocusNode2?.dispose();
    emailFieldController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
