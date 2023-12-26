import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home_page/home_page_widget.dart';
import 'createaccount_widget.dart' show CreateaccountWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateaccountModel extends FlutterFlowModel<CreateaccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passControllerValidator;
  // State field(s) for confpass widget.
  FocusNode? confpassFocusNode;
  TextEditingController? confpassController;
  late bool confpassVisibility;
  String? Function(BuildContext, String?)? confpassControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passVisibility = false;
    confpassVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailController?.dispose();

    passFocusNode?.dispose();
    passController?.dispose();

    confpassFocusNode?.dispose();
    confpassController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
