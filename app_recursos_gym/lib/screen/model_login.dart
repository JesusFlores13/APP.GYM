// import 'package:flutter/material.dart';

// class LoginScreen2 extends StatelessWidget{
//    const LoginScreen({super.key});

//    @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return // Generated code for this login4 Widget...
// GestureDetector(
//   onTap: () => FocusScope.of(context).unfocus(),
//   child: Scaffold(
//     backgroundColor: Colors.white,
//     body: SafeArea(
//       top: true,
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 16),
//             child: Text(
//               'brand.ai',

//                 style: TextStyle(
//                   fontFamily: 'Inter Tight',
//                   fontSize: 24.0, // Ajusta el tamaño según necesites
//                   fontWeight: FontWeight.normal,
//                   color: Colors.black,

//             ),
//           ),
//           Expanded(
//             child: Align(
//               alignment: AlignmentDirectional(0, 0),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
//                 child: Container(
//                   width: double.infinity,
//                   height: MediaQuery.sizeOf(context).height * 0.8,
//                   constraints: BoxConstraints(
//                     maxWidth: 530,
//                   ),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
//                     child: Column(
//                       children: [
//                         Expanded(
//                           child: TabBarView(
//                             controller: _model.tabBarController,
//                             children: [
//                               Align(
//                                 alignment: AlignmentDirectional(0, -1),
//                                 child: Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       24, 16, 24, 0),
//                                   child: SingleChildScrollView(
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         if (responsiveVisibility(
//                                           context: context,
//                                           phone: false,
//                                           tablet: false,
//                                         ))
//                                           Container(
//                                             width: 230,
//                                             height: 16,
//                                             decoration: BoxDecoration(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .secondaryBackground,
//                                             ),
//                                           ),
//                                         Text(
//                                           'Create Account',
//                                           textAlign: TextAlign.start,
//                                           style: FlutterFlowTheme.of(context)
//                                               .headlineMedium
//                                               .override(
//                                                 fontFamily: 'Inter Tight',a
//                                                 letterSpacing: 0.0,
//                                               ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   0, 4, 0, 24),
//                                           child: Text(
//                                             'Let\'s get started by filling out the form below.',
//                                             textAlign: TextAlign.start,
//                                             style:
//                                                 FlutterFlowTheme.of(context)
//                                                     .labelMedium
//                                                     .override(
//                                                       fontFamily: 'Inter',
//                                                       letterSpacing: 0.0,
//                                                     ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   0, 0, 0, 16),
//                                           child: Container(
//                                             width: double.infinity,
//                                             child: TextFormField(
//                                               controller: _model
//                                                   .emailAddressCreateTextController,
//                                               focusNode: _model
//                                                   .emailAddressCreateFocusNode,
//                                               autofocus: true,
//                                               autofillHints: [
//                                                 AutofillHints.email
//                                               ],
//                                               obscureText: false,
//                                               decoration: InputDecoration(
//                                                 labelText: 'Email',
//                                                 labelStyle:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .labelLarge
//                                                         .override(
//                                                           fontFamily: 'Inter',
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                 enabledBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .alternate,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 focusedBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .primary,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 errorBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .error,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 focusedErrorBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .error,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 filled: true,
//                                                 fillColor:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .secondaryBackground,
//                                                 contentPadding:
//                                                     EdgeInsets.all(24),
//                                               ),
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyLarge
//                                                       .override(
//                                                         fontFamily: 'Inter',
//                                                         letterSpacing: 0.0,
//                                                       ),
//                                               keyboardType:
//                                                   TextInputType.emailAddress,
//                                               cursorColor:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primary,
//                                               validator: _model
//                                                   .emailAddressCreateTextControllerValidator
//                                                   .asValidator(context),
//                                             ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   0, 0, 0, 16),
//                                           child: Container(
//                                             width: double.infinity,
//                                             child: TextFormField(
//                                               controller: _model
//                                                   .passwordCreateTextController,
//                                               focusNode: _model
//                                                   .passwordCreateFocusNode,
//                                               autofocus: true,
//                                               autofillHints: [
//                                                 AutofillHints.password
//                                               ],
//                                               obscureText: !_model
//                                                   .passwordCreateVisibility,
//                                               decoration: InputDecoration(
//                                                 labelText: 'Password',
//                                                 labelStyle:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .labelLarge
//                                                         .override(
//                                                           fontFamily: 'Inter',
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                 enabledBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .alternate,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 focusedBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .primary,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 errorBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .error,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 focusedErrorBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .error,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 filled: true,
//                                                 fillColor:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .secondaryBackground,
//                                                 contentPadding:
//                                                     EdgeInsets.all(24),
//                                                 suffixIcon: InkWell(
//                                                   onTap: () => safeSetState(
//                                                     () => _model
//                                                             .passwordCreateVisibility =
//                                                         !_model
//                                                             .passwordCreateVisibility,
//                                                   ),
//                                                   focusNode: FocusNode(
//                                                       skipTraversal: true),
//                                                   child: Icon(
//                                                     _model.passwordCreateVisibility
//                                                         ? Icons
//                                                             .visibility_outlined
//                                                         : Icons
//                                                             .visibility_off_outlined,
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .secondaryText,
//                                                     size: 24,
//                                                   ),
//                                                 ),
//                                               ),
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyLarge
//                                                       .override(
//                                                         fontFamily: 'Inter',
//                                                         letterSpacing: 0.0,
//                                                       ),
//                                               cursorColor:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primary,
//                                               validator: _model
//                                                   .passwordCreateTextControllerValidator
//                                                   .asValidator(context),
//                                             ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   0, 0, 0, 16),
//                                           child: Container(
//                                             width: double.infinity,
//                                             child: TextFormField(
//                                               controller: _model
//                                                   .passwordCreateConfirmTextController,
//                                               focusNode: _model
//                                                   .passwordCreateConfirmFocusNode,
//                                               autofocus: true,
//                                               autofillHints: [
//                                                 AutofillHints.password
//                                               ],
//                                               obscureText: !_model
//                                                   .passwordCreateConfirmVisibility,
//                                               decoration: InputDecoration(
//                                                 labelText: 'Password',
//                                                 labelStyle:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .labelLarge
//                                                         .override(
//                                                           fontFamily: 'Inter',
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                 enabledBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .alternate,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 focusedBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .primary,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 errorBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .error,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 focusedErrorBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .error,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 filled: true,
//                                                 fillColor:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .secondaryBackground,
//                                                 contentPadding:
//                                                     EdgeInsets.all(24),
//                                                 suffixIcon: InkWell(
//                                                   onTap: () => safeSetState(
//                                                     () => _model
//                                                             .passwordCreateConfirmVisibility =
//                                                         !_model
//                                                             .passwordCreateConfirmVisibility,
//                                                   ),
//                                                   focusNode: FocusNode(
//                                                       skipTraversal: true),
//                                                   child: Icon(
//                                                     _model.passwordCreateConfirmVisibility
//                                                         ? Icons
//                                                             .visibility_outlined
//                                                         : Icons
//                                                             .visibility_off_outlined,
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .secondaryText,
//                                                     size: 24,
//                                                   ),
//                                                 ),
//                                               ),
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyLarge
//                                                       .override(
//                                                         fontFamily: 'Inter',
//                                                         letterSpacing: 0.0,
//                                                       ),
//                                               cursorColor:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primary,
//                                               validator: _model
//                                                   .passwordCreateConfirmTextControllerValidator
//                                                   .asValidator(context),
//                                             ),
//                                           ),
//                                         ),
//                                         Align(
//                                           alignment:
//                                               AlignmentDirectional(0, 0),
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional
//                                                 .fromSTEB(0, 0, 0, 16),
//                                             child: FFButtonWidget(
//                                               onPressed: () async {
//                                                 GoRouter.of(context)
//                                                     .prepareAuthEvent();
//                                                 if (_model
//                                                         .passwordCreateTextController
//                                                         .text !=
//                                                     _model
//                                                         .passwordCreateConfirmTextController
//                                                         .text) {
//                                                   ScaffoldMessenger.of(
//                                                           context)
//                                                       .showSnackBar(
//                                                     SnackBar(
//                                                       content: Text(
//                                                         'Passwords don\'t match!',
//                                                       ),
//                                                     ),
//                                                   );
//                                                   return;
//                                                 }
//                                                 final user = await authManager
//                                                     .createAccountWithEmail(
//                                                   context,
//                                                   _model
//                                                       .emailAddressCreateTextController
//                                                       .text,
//                                                   _model
//                                                       .passwordCreateTextController
//                                                       .text,
//                                                 );
//                                                 if (user == null) {
//                                                   return;
//                                                 }
//                                                 context.goNamedAuth(
//                                                     'null', context.mounted);
//                                               },
//                                               text: 'Get Started',
//                                               options: FFButtonOptions(
//                                                 width: 230,
//                                                 height: 52,
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 0),
//                                                 iconPadding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(0, 0, 0, 0),
//                                                 color: FlutterFlowTheme.of(
//                                                         context)
//                                                     .primary,
//                                                 textStyle:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .titleSmall
//                                                         .override(
//                                                           fontFamily:
//                                                               'Inter Tight',
//                                                           color: Colors.white,
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                 elevation: 3,
//                                                 borderSide: BorderSide(
//                                                   color: Colors.transparent,
//                                                   width: 1,
//                                                 ),
//                                                 borderRadius:
//                                                     BorderRadius.circular(12),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           children: [
//                                             Align(
//                                               alignment:
//                                                   AlignmentDirectional(0, 0),
//                                               child: Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(16, 0, 16, 24),
//                                                 child: Text(
//                                                   'Or sign up with',
//                                                   textAlign: TextAlign.center,
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .labelMedium
//                                                       .override(
//                                                         fontFamily: 'Inter',
//                                                         letterSpacing: 0.0,
//                                                       ),
//                                                 ),
//                                               ),
//                                             ),
//                                             Align(
//                                               alignment:
//                                                   AlignmentDirectional(0, 0),
//                                               child: Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 16),
//                                                 child: Wrap(
//                                                   spacing: 16,
//                                                   runSpacing: 0,
//                                                   alignment:
//                                                       WrapAlignment.center,
//                                                   crossAxisAlignment:
//                                                       WrapCrossAlignment
//                                                           .center,
//                                                   direction: Axis.horizontal,
//                                                   runAlignment:
//                                                       WrapAlignment.center,
//                                                   verticalDirection:
//                                                       VerticalDirection.down,
//                                                   clipBehavior: Clip.none,
//                                                   children: [
//                                                     Padding(
//                                                       padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(0, 0,
//                                                                   0, 16),
//                                                       child: FFButtonWidget(
//                                                         onPressed: () async {
//                                                           GoRouter.of(context)
//                                                               .prepareAuthEvent();
//                                                           final user =
//                                                               await authManager
//                                                                   .signInWithGoogle(
//                                                                       context);
//                                                           if (user == null) {
//                                                             return;
//                                                           }
//                                                           context.goNamedAuth(
//                                                               'null',
//                                                               context
//                                                                   .mounted);
//                                                         },
//                                                         text:
//                                                             'Continue with Google',
//                                                         icon: FaIcon(
//                                                           FontAwesomeIcons
//                                                               .google,
//                                                           size: 20,
//                                                         ),
//                                                         options:
//                                                             FFButtonOptions(
//                                                           width: 230,
//                                                           height: 44,
//                                                           padding:
//                                                               EdgeInsetsDirectional
//                                                                   .fromSTEB(
//                                                                       0,
//                                                                       0,
//                                                                       0,
//                                                                       0),
//                                                           iconPadding:
//                                                               EdgeInsetsDirectional
//                                                                   .fromSTEB(
//                                                                       0,
//                                                                       0,
//                                                                       0,
//                                                                       0),
//                                                           color: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .secondaryBackground,
//                                                           textStyle:
//                                                               FlutterFlowTheme.of(
//                                                                       context)
//                                                                   .bodyMedium
//                                                                   .override(
//                                                                     fontFamily:
//                                                                         'Inter',
//                                                                     letterSpacing:
//                                                                         0.0,
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .bold,
//                                                                   ),
//                                                           elevation: 0,
//                                                           borderSide:
//                                                               BorderSide(
//                                                             color: FlutterFlowTheme
//                                                                     .of(context)
//                                                                 .alternate,
//                                                             width: 2,
//                                                           ),
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(
//                                                                       12),
//                                                           hoverColor:
//                                                               FlutterFlowTheme.of(
//                                                                       context)
//                                                                   .primaryBackground,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                     isAndroid
//                                                         ? Container()
//                                                         : Padding(
//                                                             padding:
//                                                                 EdgeInsetsDirectional
//                                                                     .fromSTEB(
//                                                                         0,
//                                                                         0,
//                                                                         0,
//                                                                         16),
//                                                             child:
//                                                                 FFButtonWidget(
//                                                               onPressed:
//                                                                   () async {
//                                                                 GoRouter.of(
//                                                                         context)
//                                                                     .prepareAuthEvent();
//                                                                 final user =
//                                                                     await authManager
//                                                                         .signInWithApple(
//                                                                             context);
//                                                                 if (user ==
//                                                                     null) {
//                                                                   return;
//                                                                 }
//                                                                 context.goNamedAuth(
//                                                                     'null',
//                                                                     context
//                                                                         .mounted);
//                                                               },
//                                                               text:
//                                                                   'Continue with Apple',
//                                                               icon: FaIcon(
//                                                                 FontAwesomeIcons
//                                                                     .apple,
//                                                                 size: 20,
//                                                               ),
//                                                               options:
//                                                                   FFButtonOptions(
//                                                                 width: 230,
//                                                                 height: 44,
//                                                                 padding: EdgeInsetsDirectional
//                                                                     .fromSTEB(
//                                                                         0,
//                                                                         0,
//                                                                         0,
//                                                                         0),
//                                                                 iconPadding:
//                                                                     EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                             0,
//                                                                             0,
//                                                                             0,
//                                                                             0),
//                                                                 color: FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .secondaryBackground,
//                                                                 textStyle: FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .bodyMedium
//                                                                     .override(
//                                                                       fontFamily:
//                                                                           'Inter',
//                                                                       letterSpacing:
//                                                                           0.0,
//                                                                       fontWeight:
//                                                                           FontWeight.bold,
//                                                                     ),
//                                                                 elevation: 0,
//                                                                 borderSide:
//                                                                     BorderSide(
//                                                                   color: FlutterFlowTheme.of(
//                                                                           context)
//                                                                       .alternate,
//                                                                   width: 2,
//                                                                 ),
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             12),
//                                                                 hoverColor: FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .primaryBackground,
//                                                               ),
//                                                             ),
//                                                           ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ).animateOnPageLoad(animationsMap[
//                                       'columnOnPageLoadAnimation1']!),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: AlignmentDirectional(0, -1),
//                                 child: Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       24, 16, 24, 0),
//                                   child: SingleChildScrollView(
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         if (responsiveVisibility(
//                                           context: context,
//                                           phone: false,
//                                           tablet: false,
//                                         ))
//                                           Container(
//                                             width: 230,
//                                             height: 16,
//                                             decoration: BoxDecoration(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .secondaryBackground,
//                                             ),
//                                           ),
//                                         Text(
//                                           'Welcome Back',
//                                           textAlign: TextAlign.start,
//                                           style: FlutterFlowTheme.of(context)
//                                               .headlineMedium
//                                               .override(
//                                                 fontFamily: 'Inter Tight',
//                                                 letterSpacing: 0.0,
//                                               ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   0, 4, 0, 24),
//                                           child: Text(
//                                             'Fill out the information below in order to access your account.',
//                                             textAlign: TextAlign.start,
//                                             style:
//                                                 FlutterFlowTheme.of(context)
//                                                     .labelMedium
//                                                     .override(
//                                                       fontFamily: 'Inter',
//                                                       letterSpacing: 0.0,
//                                                     ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   0, 0, 0, 16),
//                                           child: Container(
//                                             width: double.infinity,
//                                             child: TextFormField(
//                                               controller: _model
//                                                   .emailAddressTextController,
//                                               focusNode: _model
//                                                   .emailAddressFocusNode,
//                                               autofocus: true,
//                                               autofillHints: [
//                                                 AutofillHints.email
//                                               ],
//                                               obscureText: false,
//                                               decoration: InputDecoration(
//                                                 labelText: 'Email',
//                                                 labelStyle:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .labelLarge
//                                                         .override(
//                                                           fontFamily: 'Inter',
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                 enabledBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .alternate,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 focusedBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .primary,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 errorBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .alternate,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 focusedErrorBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .alternate,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 filled: true,
//                                                 fillColor:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .secondaryBackground,
//                                                 contentPadding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                             24, 24, 0, 24),
//                                               ),
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyLarge
//                                                       .override(
//                                                         fontFamily: 'Inter',
//                                                         letterSpacing: 0.0,
//                                                       ),
//                                               keyboardType:
//                                                   TextInputType.emailAddress,
//                                               cursorColor:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primary,
//                                               validator: _model
//                                                   .emailAddressTextControllerValidator
//                                                   .asValidator(context),
//                                             ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   0, 0, 0, 16),
//                                           child: Container(
//                                             width: double.infinity,
//                                             child: TextFormField(
//                                               controller: _model
//                                                   .passwordTextController,
//                                               focusNode:
//                                                   _model.passwordFocusNode,
//                                               autofocus: true,
//                                               autofillHints: [
//                                                 AutofillHints.password
//                                               ],
//                                               obscureText:
//                                                   !_model.passwordVisibility,
//                                               decoration: InputDecoration(
//                                                 labelText: 'Password',
//                                                 labelStyle:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .labelLarge
//                                                         .override(
//                                                           fontFamily: 'Inter',
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                 enabledBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .alternate,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 focusedBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .primary,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 errorBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .error,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 focusedErrorBorder:
//                                                     OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .error,
//                                                     width: 2,
//                                                   ),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           12),
//                                                 ),
//                                                 filled: true,
//                                                 fillColor:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .secondaryBackground,
//                                                 contentPadding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                             24, 24, 0, 24),
//                                                 suffixIcon: InkWell(
//                                                   onTap: () => safeSetState(
//                                                     () => _model
//                                                             .passwordVisibility =
//                                                         !_model
//                                                             .passwordVisibility,
//                                                   ),
//                                                   focusNode: FocusNode(
//                                                       skipTraversal: true),
//                                                   child: Icon(
//                                                     _model.passwordVisibility
//                                                         ? Icons
//                                                             .visibility_outlined
//                                                         : Icons
//                                                             .visibility_off_outlined,
//                                                     color:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .secondaryText,
//                                                     size: 24,
//                                                   ),
//                                                 ),
//                                               ),
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyLarge
//                                                       .override(
//                                                         fontFamily: 'Inter',
//                                                         letterSpacing: 0.0,
//                                                       ),
//                                               cursorColor:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primary,
//                                               validator: _model
//                                                   .passwordTextControllerValidator
//                                                   .asValidator(context),
//                                             ),
//                                           ),
//                                         ),
//                                         Align(
//                                           alignment:
//                                               AlignmentDirectional(0, 0),
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional
//                                                 .fromSTEB(0, 0, 0, 16),
//                                             child: FFButtonWidget(
//                                               onPressed: () async {
//                                                 GoRouter.of(context)
//                                                     .prepareAuthEvent();
//                                                 final user = await authManager
//                                                     .signInWithEmail(
//                                                   context,
//                                                   _model
//                                                       .emailAddressTextController
//                                                       .text,
//                                                   _model
//                                                       .passwordTextController
//                                                       .text,
//                                                 );
//                                                 if (user == null) {
//                                                   return;
//                                                 }
//                                                 context.goNamedAuth(
//                                                     'null', context.mounted);
//                                               },
//                                               text: 'Sign In',
//                                               options: FFButtonOptions(
//                                                 width: 230,
//                                                 height: 52,
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 0),
//                                                 iconPadding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(0, 0, 0, 0),
//                                                 color: FlutterFlowTheme.of(
//                                                         context)
//                                                     .primary,
//                                                 textStyle:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .titleSmall
//                                                         .override(
//                                                           fontFamily:
//                                                               'Inter Tight',
//                                                           color: Colors.white,
//                                                           letterSpacing: 0.0,
//                                                         ),
//                                                 elevation: 3,
//                                                 borderSide: BorderSide(
//                                                   color: Colors.transparent,
//                                                   width: 1,
//                                                 ),
//                                                 borderRadius:
//                                                     BorderRadius.circular(12),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Align(
//                                           alignment:
//                                               AlignmentDirectional(0, 0),
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional
//                                                 .fromSTEB(16, 0, 16, 24),
//                                             child: Text(
//                                               'Or sign in with',
//                                               textAlign: TextAlign.center,
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .labelMedium
//                                                       .override(
//                                                         fontFamily: 'Inter',
//                                                         letterSpacing: 0.0,
//                                                       ),
//                                             ),
//                                           ),
//                                         ),
//                                         Align(
//                                           alignment:
//                                               AlignmentDirectional(0, 0),
//                                           child: Wrap(
//                                             spacing: 16,
//                                             runSpacing: 0,
//                                             alignment: WrapAlignment.center,
//                                             crossAxisAlignment:
//                                                 WrapCrossAlignment.center,
//                                             direction: Axis.horizontal,
//                                             runAlignment:
//                                                 WrapAlignment.center,
//                                             verticalDirection:
//                                                 VerticalDirection.down,
//                                             clipBehavior: Clip.none,
//                                             children: [
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 16),
//                                                 child: FFButtonWidget(
//                                                   onPressed: () async {
//                                                     GoRouter.of(context)
//                                                         .prepareAuthEvent();
//                                                     final user =
//                                                         await authManager
//                                                             .signInWithGoogle(
//                                                                 context);
//                                                     if (user == null) {
//                                                       return;
//                                                     }
//                                                     context.goNamedAuth(
//                                                         'null',
//                                                         context.mounted);
//                                                   },
//                                                   text:
//                                                       'Continue with Google',
//                                                   icon: FaIcon(
//                                                     FontAwesomeIcons.google,
//                                                     size: 20,
//                                                   ),
//                                                   options: FFButtonOptions(
//                                                     width: 230,
//                                                     height: 44,
//                                                     padding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 0, 0, 0, 0),
//                                                     iconPadding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 0, 0, 0, 0),
//                                                     color: FlutterFlowTheme
//                                                             .of(context)
//                                                         .secondaryBackground,
//                                                     textStyle:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .bodyMedium
//                                                             .override(
//                                                               fontFamily:
//                                                                   'Inter',
//                                                               letterSpacing:
//                                                                   0.0,
//                                                               fontWeight:
//                                                                   FontWeight
//                                                                       .bold,
//                                                             ),
//                                                     elevation: 0,
//                                                     borderSide: BorderSide(
//                                                       color:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .alternate,
//                                                       width: 2,
//                                                     ),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             12),
//                                                     hoverColor:
//                                                         FlutterFlowTheme.of(
//                                                                 context)
//                                                             .primaryBackground,
//                                                   ),
//                                                 ),
//                                               ),
//                                               isAndroid
//                                                   ? Container()
//                                                   : Padding(
//                                                       padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(0, 0,
//                                                                   0, 16),
//                                                       child: FFButtonWidget(
//                                                         onPressed: () async {
//                                                           GoRouter.of(context)
//                                                               .prepareAuthEvent();
//                                                           final user =
//                                                               await authManager
//                                                                   .signInWithApple(
//                                                                       context);
//                                                           if (user == null) {
//                                                             return;
//                                                           }
//                                                           context.goNamedAuth(
//                                                               'null',
//                                                               context
//                                                                   .mounted);
//                                                         },
//                                                         text:
//                                                             'Continue with Apple',
//                                                         icon: FaIcon(
//                                                           FontAwesomeIcons
//                                                               .apple,
//                                                           size: 20,
//                                                         ),
//                                                         options:
//                                                             FFButtonOptions(
//                                                           width: 230,
//                                                           height: 44,
//                                                           padding:
//                                                               EdgeInsetsDirectional
//                                                                   .fromSTEB(
//                                                                       0,
//                                                                       0,
//                                                                       0,
//                                                                       0),
//                                                           iconPadding:
//                                                               EdgeInsetsDirectional
//                                                                   .fromSTEB(
//                                                                       0,
//                                                                       0,
//                                                                       0,
//                                                                       0),
//                                                           color: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .secondaryBackground,
//                                                           textStyle:
//                                                               FlutterFlowTheme.of(
//                                                                       context)
//                                                                   .bodyMedium
//                                                                   .override(
//                                                                     fontFamily:
//                                                                         'Inter',
//                                                                     letterSpacing:
//                                                                         0.0,
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .bold,
//                                                                   ),
//                                                           elevation: 0,
//                                                           borderSide:
//                                                               BorderSide(
//                                                             color: FlutterFlowTheme
//                                                                     .of(context)
//                                                                 .alternate,
//                                                             width: 2,
//                                                           ),
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(
//                                                                       12),
//                                                           hoverColor:
//                                                               FlutterFlowTheme.of(
//                                                                       context)
//                                                                   .primaryBackground,
//                                                         ),
//                                                       ),
//                                                     ),
//                                             ],
//                                           ),
//                                         ),
//                                         Align(
//                                           alignment:
//                                               AlignmentDirectional(0, 0),
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional
//                                                 .fromSTEB(0, 0, 0, 16),
//                                             child: FFButtonWidget(
//                                               onPressed: () async {
//                                                 GoRouter.of(context)
//                                                     .prepareAuthEvent();
//                                                 final user = await authManager
//                                                     .signInWithGoogle(
//                                                         context);
//                                                 if (user == null) {
//                                                   return;
//                                                 }
//                                                 context.goNamedAuth(
//                                                     'null', context.mounted);
//                                               },
//                                               text: 'Forgot Password?',
//                                               options: FFButtonOptions(
//                                                 height: 44,
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(32, 0, 32, 0),
//                                                 iconPadding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(0, 0, 0, 0),
//                                                 color: FlutterFlowTheme.of(
//                                                         context)
//                                                     .secondaryBackground,
//                                                 textStyle:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .bodyMedium
//                                                         .override(
//                                                           fontFamily: 'Inter',
//                                                           letterSpacing: 0.0,
//                                                           fontWeight:
//                                                               FontWeight.bold,
//                                                         ),
//                                                 elevation: 0,
//                                                 borderSide: BorderSide(
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .secondaryBackground,
//                                                   width: 2,
//                                                 ),
//                                                 borderRadius:
//                                                     BorderRadius.circular(40),
//                                                 hoverColor:
//                                                     FlutterFlowTheme.of(
//                                                             context)
//                                                         .primaryBackground,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ).animateOnPageLoad(animationsMap[
//                                       'columnOnPageLoadAnimation2']!),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment(0, 0),
//                           child: FlutterFlowButtonTabBar(
//                             useToggleButtonStyle: true,
//                             labelStyle: FlutterFlowTheme.of(context)
//                                 .bodyLarge
//                                 .override(
//                                   fontFamily: 'Inter',
//                                   letterSpacing: 0.0,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                             unselectedLabelStyle: FlutterFlowTheme.of(context)
//                                 .bodyLarge
//                                 .override(
//                                   fontFamily: 'Inter',
//                                   letterSpacing: 0.0,
//                                 ),
//                             labelColor:
//                                 FlutterFlowTheme.of(context).primaryText,
//                             unselectedLabelColor:
//                                 FlutterFlowTheme.of(context).secondaryText,
//                             backgroundColor: FlutterFlowTheme.of(context)
//                                 .secondaryBackground,
//                             unselectedBackgroundColor:
//                                 FlutterFlowTheme.of(context)
//                                     .primaryBackground,
//                             borderColor:
//                                 FlutterFlowTheme.of(context).alternate,
//                             unselectedBorderColor:
//                                 FlutterFlowTheme.of(context).alternate,
//                             borderWidth: 2,
//                             borderRadius: 12,
//                             elevation: 0,
//                             labelPadding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
//                             buttonMargin:
//                                 EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
//                             tabs: [
//                               Tab(
//                                 text: 'Create Account',
//                               ),
//                               Tab(
//                                 text: 'Log In',
//                               ),
//                             ],
//                             controller: _model.tabBarController,
//                             onTap: (i) async {
//                               [() async {}, () async {}][i]();
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ).animateOnPageLoad(
//                     animationsMap['containerOnPageLoadAnimation']!),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// )

//   }
// }