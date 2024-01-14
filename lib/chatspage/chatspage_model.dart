import '/components/inbox_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home_page/home_page_widget.dart';
import '/pages/reporting_page/reporting_page_widget.dart';
import 'chatspage_widget.dart' show ChatspageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatspageModel extends FlutterFlowModel<ChatspageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for inbox component.
  late InboxModel inboxModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    inboxModel = createModel(context, () => InboxModel());
  }

  void dispose() {
    unfocusNode.dispose();
    inboxModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
