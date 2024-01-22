import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_auth_bloc/screens/auth/welcome_screen.dart';

import 'blocs/authentication_bloc/authentication_bloc.dart';
import 'screens/home/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth with Bloc',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          background: Colors.white,
          onBackground: Colors.black,
          primary: Color.fromARGB(255, 73, 66, 254),
          onPrimary: Colors.black,
          secondary: Color.fromARGB(255, 87, 101, 255),
          onSecondary: Colors.white,
          tertiary: Color.fromARGB(255, 189, 119, 255),
          error: Colors.red,
          outline: Color.fromARGB(255, 50, 50, 50),
        ),
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return const HomeScreen();
          } else {
            return const WelcomeScreen();
          }
        },
      ),
    );
  }
}
