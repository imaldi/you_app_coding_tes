import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:you_app_coding_tes/features/auth/presentation/login_screen.dart';
import 'package:you_app_coding_tes/features/auth/presentation/register_screen.dart';
import 'package:you_app_coding_tes/features/profile/presentation/profile_screen.dart';
import 'package:you_app_coding_tes/features/profile/presentation/update_interest_screen.dart';
import 'package:you_app_coding_tes/features/profile/presentation/update_profile_screen.dart';

abstract class AppRouter {
  static const loginScreen = 'login';
  static const registerScreen = 'register';
  static const profileScreen = 'profile';
  static const updateProfileScreen = 'update_profile';
  static const updateInterestsScreen = 'login';

  static final GoRouter routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: loginScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: registerScreen,
            builder: (BuildContext context, GoRouterState state) {
              return const RegisterScreen();
            },
          ),
          GoRoute(
              path: profileScreen,
              builder: (BuildContext context, GoRouterState state) {
                return const ProfileScreen();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: updateProfileScreen,
                  builder: (BuildContext context, GoRouterState state) {
                    return const UpdateProfileScreen();
                  },
                  routes: <RouteBase>[
                    GoRoute(
                        path: updateInterestsScreen,
                        builder: (BuildContext context, GoRouterState state) {
                          return const UpdateInterestScreen();
                        }),
                  ],
                )
              ]),
        ],
      ),
    ],
  );
}
