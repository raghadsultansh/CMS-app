import '/backend/backend.dart';
import '/chat_group_threads/chat_2_invite_users/chat2_invite_users_widget.dart';
import '/chat_group_threads/chat_2_main/chat2_main_widget.dart';
import '/chat_group_threads/delete_dialog/delete_dialog_widget.dart';
import '/chat_group_threads/user_list_small/user_list_small_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_details_overlay_model.dart';
export 'chat_details_overlay_model.dart';

class ChatDetailsOverlayWidget extends StatefulWidget {
  const ChatDetailsOverlayWidget({
    Key? key,
    required this.chatRef,
  }) : super(key: key);

  final ChatsRecord? chatRef;

  @override
  _ChatDetailsOverlayWidgetState createState() =>
      _ChatDetailsOverlayWidgetState();
}

class _ChatDetailsOverlayWidgetState extends State<ChatDetailsOverlayWidget> {
  late ChatDetailsOverlayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatDetailsOverlayModel());
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
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 0.0, 4.0),
                  child: RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Group Chat ID: ',
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: valueOrDefault<String>(
                            widget.chatRef?.groupChatId?.toString(),
                            '--',
                          ),
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'In this chat',
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final chatUsers = widget.chatRef?.users?.toList() ?? [];
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: chatUsers.length,
                        itemBuilder: (context, chatUsersIndex) {
                          final chatUsersItem = chatUsers[chatUsersIndex];
                          return FutureBuilder<UsersRecord>(
                            future: UsersRecord.getDocumentOnce(chatUsersItem),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final userListSmallUsersRecord = snapshot.data!;
                              return wrapWithModel(
                                model: _model.userListSmallModels.getModel(
                                  chatUsersItem.id,
                                  chatUsersIndex,
                                ),
                                updateCallback: () => setState(() {}),
                                updateOnChange: true,
                                child: UserListSmallWidget(
                                  key: Key(
                                    'Keybgq_${chatUsersItem.id}',
                                  ),
                                  userRef: userListSmallUsersRecord,
                                  action: () async {},
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.deleteDialogModel,
                        updateCallback: () => setState(() {}),
                        updateOnChange: true,
                        child: DeleteDialogWidget(
                          chatList: widget.chatRef,
                          action: () async {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 250),
                                reverseDuration: Duration(milliseconds: 250),
                                child: Chat2InviteUsersWidget(
                                  chatRef: widget.chatRef,
                                ),
                              ),
                            );
                          },
                          deleteAction: () async {
                            await widget.chatRef!.reference.delete();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'You have successfully deleted a chat!',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                ),
                                duration: Duration(milliseconds: 3000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.leftToRight,
                                duration: Duration(milliseconds: 220),
                                reverseDuration: Duration(milliseconds: 220),
                                child: Chat2MainWidget(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 44.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: 'Close',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 52.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(44.0, 0.0, 44.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Poppins',
                                fontSize: 18.0,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      hoverColor: FlutterFlowTheme.of(context).alternate,
                      hoverBorderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      hoverTextColor: FlutterFlowTheme.of(context).primaryText,
                      hoverElevation: 3.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
