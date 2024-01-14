import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/createaccount/createaccount_widget.dart';
import '/pages/home_page/home_page_widget.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for passwordfield widget.
  FocusNode? passwordfieldFocusNode;
  TextEditingController? passwordfieldController;
  late bool passwordfieldVisibility;
  String? Function(BuildContext, String?)? passwordfieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordfieldVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailFieldFocusNode?.dispose();
    emailFieldController?.dispose();

    passwordfieldFocusNode?.dispose();
    passwordfieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
