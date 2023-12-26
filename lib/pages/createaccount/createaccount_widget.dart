import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'createaccount_model.dart';
export 'createaccount_model.dart';

class CreateaccountWidget extends StatefulWidget {
  const CreateaccountWidget({Key? key}) : super(key: key);

  @override
  _CreateaccountWidgetState createState() => _CreateaccountWidgetState();
}

class _CreateaccountWidgetState extends State<CreateaccountWidget> {
  late CreateaccountModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateaccountModel());

    _model.emailController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.passController ??= TextEditingController();
    _model.passFocusNode ??= FocusNode();

    _model.confpassController ??= TextEditingController();
    _model.confpassFocusNode ??= FocusNode();
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
        backgroundColor: Color(0xFF7139EF),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create an account',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).lineColor,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                    child: Text(
                      'Let\'s get started by filling out the form below.',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: TextFormField(
                      controller: _model.emailController,
                      focusNode: _model.emailFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                      validator:
                          _model.emailControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: TextFormField(
                      controller: _model.passController,
                      focusNode: _model.passFocusNode,
                      obscureText: !_model.passVisibility,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () =>
                                _model.passVisibility = !_model.passVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            _model.passVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Color(0xFF757575),
                            size: 22.0,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                      validator:
                          _model.passControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: TextFormField(
                      controller: _model.confpassController,
                      focusNode: _model.confpassFocusNode,
                      obscureText: !_model.confpassVisibility,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => _model.confpassVisibility =
                                !_model.confpassVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            _model.confpassVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Color(0xFF757575),
                            size: 22.0,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                      minLines: 1,
                      validator: _model.confpassControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (_model.passController.text !=
                            _model.confpassController.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Passwords don\'t match!',
                              ),
                            ),
                          );
                          return;
                        }

                        final user = await authManager.createAccountWithEmail(
                          context,
                          _model.emailController.text,
                          _model.passController.text,
                        );
                        if (user == null) {
                          return;
                        }

                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePageWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      text: 'Create Account',
                      options: FFButtonOptions(
                        width: 370.0,
                        height: 44.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFFF4081),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                    child: Container(
                      width: 370.0,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Container(
                                width: double.infinity,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 70.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F5F5),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'OR',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
