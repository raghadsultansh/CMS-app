import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lesson1_introductionto_c_s150_model.dart';
export 'lesson1_introductionto_c_s150_model.dart';

class Lesson1IntroductiontoCS150Widget extends StatefulWidget {
  const Lesson1IntroductiontoCS150Widget({Key? key}) : super(key: key);

  @override
  _Lesson1IntroductiontoCS150WidgetState createState() =>
      _Lesson1IntroductiontoCS150WidgetState();
}

class _Lesson1IntroductiontoCS150WidgetState
    extends State<Lesson1IntroductiontoCS150Widget> {
  late Lesson1IntroductiontoCS150Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Lesson1IntroductiontoCS150Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Lesson1IntroductiontoCS150'});
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

    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primary,
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF4B39EF), Color(0xE622178E)],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(-0.34, 1.0),
                    end: AlignmentDirectional(0.34, -1.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 60.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 0.0,
                            buttonSize: 60.0,
                            fillColor: Color(0x16FFFFFF),
                            icon: Icon(
                              Icons.chevron_left_sharp,
                              color: FlutterFlowTheme.of(context).lineColor,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'LESSON1_INTRODUCTIONTO_C_S150_chevron_le');
                              logFirebaseEvent('IconButton_navigate_back');
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 366.0,
                      height: 350.0,
                      decoration: BoxDecoration(
                        color: Color(0x27000000),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 9.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                            spreadRadius: 8.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(26.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowYoutubePlayer(
                          url:
                              'https://youtu.be/WnMPk6_8qDo?si=7n59o3NrDKWHvBfW',
                          autoPlay: false,
                          looping: true,
                          mute: false,
                          showControls: true,
                          showFullScreen: true,
                          strictRelatedVideos: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 25.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 20.0, 0.0),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: FlutterFlowTheme.of(context).alternate,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
