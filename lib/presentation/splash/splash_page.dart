import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neverForget/application/auth/auth_bloc.dart';
import 'package:neverForget/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            print("I am authenticated!");
          }, //=> ExtendedNavigator.of(context).replace(Routes.signInPage),
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.signInPage),
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const CircularProgressIndicator(),
              FloatingActionButton(onPressed: () {
                context.watch<AuthBloc>().add(const AuthEvent.signedOut());
              })
            ],
          ),
        ),
      ),
    );
  }
}
