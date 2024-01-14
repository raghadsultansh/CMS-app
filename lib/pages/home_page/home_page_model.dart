import '/components/nav_bar_music/nav_bar_music_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/cs150/cs150_widget.dart';
import '/pages/cs151/cs151_widget.dart';
import '/pages/cs252/cs252_widget.dart';
import '/pages/math_subjects/math_subjects_widget.dart';
import '/pages/physics_subjects/physics_subjects_widget.dart';
import '/pages/programming_subjects/programming_subjects_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldSearch widget.
  final textFieldSearchKey = GlobalKey();
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchController;
  String? textFieldSearchSelectedOption;
  String? Function(BuildContext, String?)? textFieldSearchControllerValidator;
  // Model for NavBarMusic component.
  late NavBarMusicModel navBarMusicModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarMusicModel = createModel(context, () => NavBarMusicModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldSearchFocusNode?.dispose();

    navBarMusicModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
