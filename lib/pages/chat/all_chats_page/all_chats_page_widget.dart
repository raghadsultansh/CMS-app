import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_chats_page_model.dart';
export 'all_chats_page_model.dart';

class AllChatsPageWidget extends StatefulWidget {
  const AllChatsPageWidget({super.key});

  @override
  State<AllChatsPageWidget> createState() => _AllChatsPageWidgetState();
}

class _AllChatsPageWidgetState extends State<AllChatsPageWidget> {
  late AllChatsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllChatsPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return StreamBuilder<List<ChatsRecord>>(
      stream: queryChatsRecord(
        queryBuilder: (chatsRecord) => chatsRecord
            .where(
              'users',
              arrayContains: currentUserReference,
            )
            .orderBy('last_message_time', descending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ChatsRecord> allChatsPageChatsRecordList = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              context.pushNamed('createGroupChat');
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: Icon(
              Icons.add_rounded,
              color: Colors.white,
              size: 36.0,
            ),
          ),
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('homePage');
              },
            ),
            title: Text(
              'Discussion Board ',
              style: FlutterFlowTheme.of(context).headlineMedium,
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                      child: StreamBuilder<List<ChatsRecord>>(
                        stream: queryChatsRecord(
                          queryBuilder: (chatsRecord) => chatsRecord
                              .where(
                                'users',
                                arrayContains: currentUserReference,
                              )
                              .orderBy('last_message_time', descending: true),
                        ),
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
                          List<ChatsRecord> listViewChatsRecordList =
                              snapshot.data!;
                          if (listViewChatsRecordList.isEmpty) {
                            return Center(
                              child: Image.asset(
                                'assets/images/messagesMainEmpty@2x.png',
                                width: MediaQuery.sizeOf(context).width * 0.76,
                              ),
                            );
                          }
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewChatsRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewChatsRecord =
                                  listViewChatsRecordList[listViewIndex];
                              return Visibility(
                                visible: valueOrDefault<bool>(
                                      currentUserReference ==
                                          listViewChatsRecord.userA,
                                      true,
                                    ) ||
                                    valueOrDefault<bool>(
                                      currentUserReference ==
                                          listViewChatsRecord.userB,
                                      true,
                                    ),
                                child: StreamBuilder<UsersRecord>(
                                  stream: UsersRecord.getDocument(
                                      listViewChatsRecord.userA!),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final chatPreviewUsersRecord =
                                        snapshot.data!;
                                    return StreamBuilder<FFChatInfo>(
                                      stream: FFChatManager.instance
                                          .getChatInfo(
                                              chatRecord: listViewChatsRecord),
                                      builder: (context, snapshot) {
                                        final chatInfo = snapshot.data ??
                                            FFChatInfo(listViewChatsRecord);
                                        return FFChatPreview(
                                          onTap: () => context.pushNamed(
                                            'chatPage',
                                            queryParameters: {
                                              'chatUser': serializeParam(
                                                chatInfo.otherUsers.length == 1
                                                    ? chatInfo
                                                        .otherUsersList.first
                                                    : null,
                                                ParamType.Document,
                                              ),
                                              'chatRef': serializeParam(
                                                chatInfo.chatRecord.reference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'chatUser':
                                                  chatInfo.otherUsers.length ==
                                                          1
                                                      ? chatInfo
                                                          .otherUsersList.first
                                                      : null,
                                            },
                                          ),
                                          lastChatText:
                                              chatInfo.chatPreviewMessage(),
                                          lastChatTime: listViewChatsRecord
                                              .lastMessageTime,
                                          seen: listViewChatsRecord
                                              .lastMessageSeenBy!
                                              .contains(currentUserReference),
                                          title: chatInfo.chatPreviewTitle(),
                                          userProfilePic:
                                              chatInfo.chatPreviewPic(),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          unreadColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          titleTextStyle: GoogleFonts.getFont(
                                            'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                            fontStyle: FontStyle.normal,
                                          ),
                                          dateTextStyle: GoogleFonts.getFont(
                                            'Urbanist',
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14.0,
                                          ),
                                          previewTextStyle: GoogleFonts.getFont(
                                            'Urbanist',
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14.0,
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 3.0, 3.0, 3.0),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        );
                                      },
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
