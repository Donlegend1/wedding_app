import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/features/welcome/screens/intro.dart';
import 'package:my_flutter_app/main.dart';
import 'package:my_flutter_app/features/auth/screens/forgetpassword.dart';
import 'package:my_flutter_app/features/auth/screens/login.dart';
import 'package:my_flutter_app/features/auth/screens/register.dart';
import 'package:my_flutter_app/features/wedding/screens/dashboard.dart';
import 'package:my_flutter_app/features/events/screens/events.dart';
import 'package:my_flutter_app/features/gallery/screens/gallery.dart';
// import 'package:my_flutter_app/features/livevideo/screens/liveview.dart';

final router = GoRouter(initialLocation: "/", routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const MyHomePage(
      title: "Homepage",
    ),
    routes: [
      GoRoute(
        path: 'login',
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text("Login"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: const Login(),
        ),
      ),
      GoRoute(
        path: 'register',
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text("Register"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: const Register(),
        ),
      ),
      GoRoute(
        path: 'forgetpassword',
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text("Forgot Password"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: const Forgetpassword(),
        ),
      ),
    ],
  ),
  GoRoute(
      path: '/home',
      builder: (context, state) => const MyHomePage(
            title: "Homepage",
          )),

  GoRoute(
    path: '/dashboard',
    builder: (context, state) => const Dashboard(),
  ),
  GoRoute(
    path: '/events',
    builder: (context, state) => const Events(),
  ),
  GoRoute(
    path: '/gallery',
    builder: (context, state) => const Gallery(),
  ),
  // GoRoute(
  //   path: '/liveview',
  //   builder: (context, state) => const Liveview(),
  // ),
  GoRoute(
    path: '/location',
    builder: (context, state) => const Dashboard(),
  ),
]);
