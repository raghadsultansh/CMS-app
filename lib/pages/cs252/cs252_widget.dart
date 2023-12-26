import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/c_s150_article/c_s150_article_widget.dart';
import '/pages/c_s252_quiz/c_s252_quiz_widget.dart';
import '/pages/c_s252_videos/c_s252_videos_widget.dart';
import '/pages/home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cs252_model.dart';
export 'cs252_model.dart';

class Cs252Widget extends StatefulWidget {
  const Cs252Widget({Key? key}) : super(key: key);

  @override
  _Cs252WidgetState createState() => _Cs252WidgetState();
}

class _Cs252WidgetState extends State<Cs252Widget> {
  late Cs252Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cs252Model());
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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFFFE6F0),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 30.0,
            buttonSize: 60.0,
            fillColor: Color(0xFFFF4081),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePageWidget(),
                ),
              );
            },
          ),
          title: Text(
            'CS 252',
            style: FlutterFlowTheme.of(context).titleMedium,
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
                  child: Text(
                    'CS 252 -Data Structure',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                    child: Text(
                      'Welcome to our comprehensive Data Structures section, where you\'ll explore the fascinating world of data organization and algorithm optimization. Data structures are the foundation of efficient and effective programming, enabling you to manage, store, and manipulate data in a structured manner. ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 12.0,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 8.0, 2.0),
                  child: Text(
                    'Quizzes',
                    style: FlutterFlowTheme.of(context).titleMedium,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                        child: Text(
                          'Test your knowledge and apply what you\'ve learned with interactive quizzes. Perfect for self-assessment and reinforcing key concepts.',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CS252QuizWidget(),
                            ),
                          );
                        },
                        text: 'Start Quiz',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFFF4081),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 8.0, 16.0),
                  child: Text(
                    'Articles',
                    style: FlutterFlowTheme.of(context).titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 4.0),
                  child: Text(
                    'Dive deep into in-depth articles to gain a comprehensive understanding of data structures, algorithms, and their real-world applications.',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CS150ArticleWidget(),
                            ),
                          );
                        },
                        text: 'Read Article',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFFF4081),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 8.0, 16.0),
                  child: Text(
                    'Videos',
                    style: FlutterFlowTheme.of(context).titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 4.0),
                  child: Text(
                    'Dive deep into in-depth articles to gain a comprehensive understanding of data structures, algorithms, and their real-world applications.',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CS252VideosWidget(),
                          ),
                        );
                      },
                      text: 'Watch Video',
                      options: FFButtonOptions(
                        width: 150.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFFF4081),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
