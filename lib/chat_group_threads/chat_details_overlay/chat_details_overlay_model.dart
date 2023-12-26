import '/backend/backend.dart';
import '/chat_group_threads/chat_2_invite_users/chat2_invite_users_widget.dart';
import '/chat_group_threads/chat_2_main/chat2_main_widget.dart';
import '/chat_group_threads/delete_dialog/delete_dialog_widget.dart';
import '/chat_group_threads/user_list_small/user_list_small_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'chat_details_overlay_widget.dart' show ChatDetailsOverlayWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatDetailsOverlayModel
    extends FlutterFlowModel<ChatDetailsOverlayWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for user_ListSmall dynamic component.
  late FlutterFlowDynamicModels<UserListSmallModel> userListSmallModels;
  // Model for deleteDialog component.
  late DeleteDialogModel deleteDialogModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userListSmallModels = FlutterFlowDynamicModels(() => UserListSmallModel());
    deleteDialogModel = createModel(context, () => DeleteDialogModel());
  }

  void dispose() {
    userListSmallModels.dispose();
    deleteDialogModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
