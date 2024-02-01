import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomePageWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePageWidget() : LoginWidget(),
          routes: [
            FFRoute(
              name: 'login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'createAccount',
              path: 'createAccount',
              builder: (context, params) => CreateAccountWidget(),
            ),
            FFRoute(
              name: 'createYourProfile',
              path: 'createYourProfile',
              requireAuth: true,
              builder: (context, params) => CreateYourProfileWidget(),
            ),
            FFRoute(
              name: 'forgotPassword',
              path: 'forgotPassword',
              requireAuth: true,
              builder: (context, params) => ForgotPasswordWidget(),
            ),
            FFRoute(
              name: 'homePage',
              path: 'homePage',
              requireAuth: true,
              builder: (context, params) => HomePageWidget(),
            ),
            FFRoute(
              name: 'editSettings',
              path: 'editSettings',
              requireAuth: true,
              builder: (context, params) => EditSettingsWidget(),
            ),
            FFRoute(
              name: 'editUserProfile',
              path: 'editUserProfile',
              requireAuth: true,
              builder: (context, params) => EditUserProfileWidget(),
            ),
            FFRoute(
              name: 'changePassword',
              path: 'changePassword',
              requireAuth: true,
              builder: (context, params) => ChangePasswordWidget(),
            ),
            FFRoute(
              name: 'chatPage',
              path: 'chatPage',
              requireAuth: true,
              asyncParams: {
                'chatUser': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => ChatPageWidget(
                chatUser: params.getParam('chatUser', ParamType.Document),
                chatRef: params.getParam(
                    'chatRef', ParamType.DocumentReference, false, ['chats']),
              ),
            ),
            FFRoute(
              name: 'allChatsPage',
              path: 'allChatsPage',
              requireAuth: true,
              builder: (context, params) => AllChatsPageWidget(),
            ),
            FFRoute(
              name: 'addChatUsers',
              path: 'addChatUsers',
              requireAuth: true,
              asyncParams: {
                'chat': getDoc(['chats'], ChatsRecord.fromSnapshot),
              },
              builder: (context, params) => AddChatUsersWidget(
                chat: params.getParam('chat', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'createGroupChat',
              path: 'createGroupChat',
              requireAuth: true,
              builder: (context, params) => CreateGroupChatWidget(),
            ),
            FFRoute(
              name: 'Welcome',
              path: 'welcome',
              requireAuth: true,
              builder: (context, params) => WelcomeWidget(),
            ),
            FFRoute(
              name: 'Dashboard6',
              path: 'dashboard6',
              requireAuth: true,
              builder: (context, params) => Dashboard6Widget(),
            ),
            FFRoute(
              name: 'CourseCS150',
              path: 'courseCS150',
              requireAuth: true,
              builder: (context, params) => CourseCS150Widget(),
            ),
            FFRoute(
              name: 'CourseCS151',
              path: 'courseCS151',
              requireAuth: true,
              builder: (context, params) => CourseCS151Widget(),
            ),
            FFRoute(
              name: 'CourseCS252',
              path: 'courseCS252',
              requireAuth: true,
              builder: (context, params) => CourseCS252Widget(),
            ),
            FFRoute(
              name: 'ProgrammingCategory',
              path: 'programmingCategory',
              requireAuth: true,
              builder: (context, params) => ProgrammingCategoryWidget(),
            ),
            FFRoute(
              name: 'PhysicsCategory',
              path: 'physicsCategory',
              requireAuth: true,
              builder: (context, params) => PhysicsCategoryWidget(),
            ),
            FFRoute(
              name: 'MathCategory',
              path: 'mathCategory',
              requireAuth: true,
              builder: (context, params) => MathCategoryWidget(),
            ),
            FFRoute(
              name: 'CS150Vidlesson1',
              path: 'cS150Vidlesson1',
              requireAuth: true,
              builder: (context, params) => CS150Vidlesson1Widget(),
            ),
            FFRoute(
              name: 'CS150Vidlesson2',
              path: 'cS150Vidlesson2',
              requireAuth: true,
              builder: (context, params) => CS150Vidlesson2Widget(),
            ),
            FFRoute(
              name: 'CS150Vidlesson3',
              path: 'cS150Vidlesson3',
              requireAuth: true,
              builder: (context, params) => CS150Vidlesson3Widget(),
            ),
            FFRoute(
              name: 'CS151Vidlesson3',
              path: 'cS151Vidlesson3',
              requireAuth: true,
              builder: (context, params) => CS151Vidlesson3Widget(),
            ),
            FFRoute(
              name: 'CS151Vidlesson1',
              path: 'cS151Vidlesson1',
              requireAuth: true,
              builder: (context, params) => CS151Vidlesson1Widget(),
            ),
            FFRoute(
              name: 'CS151Vidlesson2',
              path: 'cS151Vidlesson2',
              requireAuth: true,
              builder: (context, params) => CS151Vidlesson2Widget(),
            ),
            FFRoute(
              name: 'CS252Vidlesson1',
              path: 'cS252Vidlesson1',
              requireAuth: true,
              builder: (context, params) => CS252Vidlesson1Widget(),
            ),
            FFRoute(
              name: 'CS252Vidlesson2',
              path: 'cS252Vidlesson2',
              requireAuth: true,
              builder: (context, params) => CS252Vidlesson2Widget(),
            ),
            FFRoute(
              name: 'CS252Vidlesson3',
              path: 'cS252Vidlesson3',
              requireAuth: true,
              builder: (context, params) => CS252Vidlesson3Widget(),
            ),
            FFRoute(
              name: 'CS252Vidlesson4',
              path: 'cS252Vidlesson4',
              requireAuth: true,
              builder: (context, params) => CS252Vidlesson4Widget(),
            ),
            FFRoute(
              name: 'CS151Vidlesson4',
              path: 'cS151Vidlesson4',
              requireAuth: true,
              builder: (context, params) => CS151Vidlesson4Widget(),
            ),
            FFRoute(
              name: 'CS151Articals',
              path: 'cS151Articals',
              requireAuth: true,
              builder: (context, params) => CS151ArticalsWidget(),
            ),
            FFRoute(
              name: 'CS150Articals',
              path: 'cS150Articals',
              requireAuth: true,
              builder: (context, params) => CS150ArticalsWidget(),
            ),
            FFRoute(
              name: 'CS252Articals',
              path: 'cS252Articals',
              requireAuth: true,
              builder: (context, params) => CS252ArticalsWidget(),
            ),
            FFRoute(
              name: 'AwardpageCS150',
              path: 'awardpageCS150',
              requireAuth: true,
              builder: (context, params) => AwardpageCS150Widget(),
            ),
            FFRoute(
              name: 'AwardpageCS151',
              path: 'awardpageCS151',
              requireAuth: true,
              builder: (context, params) => AwardpageCS151Widget(),
            ),
            FFRoute(
              name: 'AwardpageCS252',
              path: 'awardpageCS252',
              requireAuth: true,
              builder: (context, params) => AwardpageCS252Widget(),
            ),
            FFRoute(
              name: 'CS150Quizz',
              path: 'cS150Quizz',
              requireAuth: true,
              builder: (context, params) => CS150QuizzWidget(),
            ),
            FFRoute(
              name: 'Cs151Quizz',
              path: 'cs151Quizz',
              requireAuth: true,
              builder: (context, params) => Cs151QuizzWidget(),
            ),
            FFRoute(
              name: 'Cs252Quizz',
              path: 'cs252Quizz',
              requireAuth: true,
              builder: (context, params) => Cs252QuizzWidget(),
            ),
            FFRoute(
              name: 'chatspage',
              path: 'chatspage',
              requireAuth: true,
              builder: (context, params) => ChatspageWidget(),
            ),
            FFRoute(
              name: 'Report',
              path: 'report',
              requireAuth: true,
              builder: (context, params) => ReportWidget(),
            ),
            FFRoute(
              name: 'cs150chatpage',
              path: 'cs150chatpage',
              requireAuth: true,
              builder: (context, params) => Cs150chatpageWidget(),
            ),
            FFRoute(
              name: 'cs151chatpage',
              path: 'cs151chatpage',
              requireAuth: true,
              builder: (context, params) => Cs151chatpageWidget(),
            ),
            FFRoute(
              name: 'cs252chatpage',
              path: 'cs252chatpage',
              requireAuth: true,
              builder: (context, params) => Cs252chatpageWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).accent4,
                  child: Image.asset(
                    'assets/images/output_image-AnyEraser.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
