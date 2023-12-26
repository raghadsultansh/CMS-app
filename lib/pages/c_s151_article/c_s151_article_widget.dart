import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/cs151/cs151_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'c_s151_article_model.dart';
export 'c_s151_article_model.dart';

class CS151ArticleWidget extends StatefulWidget {
  const CS151ArticleWidget({Key? key}) : super(key: key);

  @override
  _CS151ArticleWidgetState createState() => _CS151ArticleWidgetState();
}

class _CS151ArticleWidgetState extends State<CS151ArticleWidget> {
  late CS151ArticleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CS151ArticleModel());
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.99, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                buttonSize: 60.0,
                                fillColor: Color(0xFFDF4AFC),
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Cs151Widget(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: Text(
                          'CS151 Articles',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Article 1:An Introduction to Java GUI Programming',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Text(
                                    'This article is meant for the individual who has little or no experience in Java GUI programming. As such, this paper will focus on the hierarchal tree structure that roots at the frame and goes into the content pane panel.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await launchURL(
                                          'https://www.codeproject.com/Articles/33536/An-Introduction-to-Java-GUI-Programming');
                                    },
                                    text: 'Read',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFDF4AFC),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      elevation: 2.0,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Article 2: Java Quiz 2 - GUI and Threads',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Text(
                                    'Explore various data structures and algorithms used in computer science.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await launchURL(
                                          'https://quizlet.com/488564475/java-quiz-2-gui-and-threads-flash-cards/');
                                    },
                                    text: 'Read',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFDF4AFC),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      elevation: 2.0,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Object-Oriented Programming in Java – A Beginner\'s Guide',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Text(
                                    'Learn about the principles and concepts of object-oriented programming.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await launchURL(
                                          'https://www.freecodecamp.org/news/object-oriented-programming-concepts-java/');
                                    },
                                    text: 'Read',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFDF4AFC),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      elevation: 2.0,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
