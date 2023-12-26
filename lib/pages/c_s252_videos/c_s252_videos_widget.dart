import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/complixityvideo/complixityvideo_widget.dart';
import '/pages/cs252/cs252_widget.dart';
import '/pages/introductiontodatastructure/introductiontodatastructure_widget.dart';
import '/pages/lesson3introductiontostack/lesson3introductiontostack_widget.dart';
import '/pages/lesson4_stackimplementation/lesson4_stackimplementation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'c_s252_videos_model.dart';
export 'c_s252_videos_model.dart';

class CS252VideosWidget extends StatefulWidget {
  const CS252VideosWidget({Key? key}) : super(key: key);

  @override
  _CS252VideosWidgetState createState() => _CS252VideosWidgetState();
}

class _CS252VideosWidgetState extends State<CS252VideosWidget> {
  late CS252VideosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CS252VideosModel());
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
        backgroundColor: Color(0xFFF5F5F5),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 24.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlutterFlowIconButton(
                        borderRadius: 30.0,
                        buttonSize: 40.0,
                        fillColor: Color(0xFFED5264),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 25.0,
                        ),
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Cs252Widget(),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'CS252 Videos',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEA2C2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Lesson 1:introduction to CS252',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 30.0,
                                  buttonSize: 40.0,
                                  fillColor: Color(0xFFED5264),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            IntroductiontodatastructureWidget(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Text(
                              'Get started with the basics of data structures in this introductory video. Explore the significance of data organization, types of data structures, and their impact on software performance. Ideal for beginners and those looking to reinforce their understanding.',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEA2C2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Lesson 2: complexity ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 30.0,
                                  buttonSize: 40.0,
                                  fillColor: Color(0xFFED5264),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ComplixityvideoWidget(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Text(
                              'Gain insight into the concept of complexity in this video. Explore its relevance across various fields and its role in problem-solving and decision-making. Perfect for a quick overview of this vital concept.',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEA2C2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Lesson 3:introduction to stack',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 30.0,
                                  buttonSize: 40.0,
                                  fillColor: Color(0xFFED5264),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Lesson3introductiontostackWidget(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Text(
                              'Discover the fundamentals of stacks in Lesson 3. Learn how stacks work and their practical applications in computer science and programming. Ideal for beginners looking to understand the basics of this data structure.',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEA2C2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Lesson 4:Stack implementation',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  buttonSize: 40.0,
                                  fillColor: Color(0xFFED5264),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Lesson4StackimplementationWidget(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Text(
                              'In Lesson 4, dive into the practical implementation of stacks. Explore how to create and use stacks in programming, with hands-on examples and real-world applications. Perfect for those wanting to master the art of implementing stacks.',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
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
        ),
      ),
    );
  }
}
