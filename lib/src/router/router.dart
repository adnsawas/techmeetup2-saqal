import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:saqal_website/src/common_widgets/website_skeleton.dart';
import 'package:saqal_website/src/features/challenges/challenges_page.dart';
import 'package:saqal_website/src/features/landing/landing_page.dart';
import 'package:saqal_website/src/features/profile/profile_page.dart';
import 'package:saqal_website/src/features/tracks/tracks_page.dart';

enum AppRoute {
  login,
  landing,
  tracks,
  challenges,
  profile,
  expert,
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  // final auth = ref.watch(authRepositoryProvider);
  return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/landing',
      redirectLimit: 2,
      // Once authStateChanges changes, we would like to refresh the router
      // refreshListenable: GoRouterRefreshStream(auth.authStateChanges()),
      // redirect: (context, state) {
      //   final userIsLogging = state.location == '/auth' ||
      //       state.location == '/' ||
      //       state.location == '/intro';
      //   final userIsLoggedIn = auth.isValidUser;
      //   if (!userIsLogging && !userIsLoggedIn) {
      //     // redirect user to Login Screen
      //     return '/intro';
      //   }
      //   if (userIsLogging && !userIsLoggedIn) {
      //     // do not redirect the user
      //     return null;
      //   }
      //   if (!userIsLogging && userIsLoggedIn) {
      //     // do not redirect the user
      //     return null;
      //   }
      //   // if user is logging while is actually logged in
      //   else {
      //     return '/home';
      //   }
      // },
      routes: [
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state, child) => NoTransitionPage(
              child: WebsiteSkeleton(key: state.pageKey, child: child)),
          routes: [
            GoRoute(
              path: '/login',
              name: AppRoute.login.name,
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: Container()),
            ),
            GoRoute(
              path: '/landing',
              name: AppRoute.landing.name,
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: LandingPage(key: state.pageKey)),
            ),
            GoRoute(
              path: '/tracks',
              name: AppRoute.tracks.name,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: TracksPage()),
            ),
            GoRoute(
              path: '/challenges',
              name: AppRoute.challenges.name,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: ChallengesPage()),
            ),
            GoRoute(
              path: '/profile',
              name: AppRoute.profile.name,
              pageBuilder: (context, state) => const NoTransitionPage(
                  child: ProfilePage(
                userName: 'عدنان سواس',
                isExpert: false,
                userImagePath: 'assets/images/expert1.png',
              )),
            ),
            GoRoute(
              path: '/expert',
              name: AppRoute.expert.name,
              pageBuilder: (context, state) => const NoTransitionPage(
                  child: ProfilePage(
                userName: 'فهد جوجل مدحت',
                isExpert: true,
                userImagePath: 'assets/images/expert2.png',
              )),
            ),
          ],
        ),
      ]);
});
