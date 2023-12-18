import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_news/configurations/configurations.dart';
import 'package:my_news/features/authentication/authentication.dart';
import 'package:progress_builder/progress_builder.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.user != null) {
          context.router.replace(const HomeRoute());
        }
      },
      listenWhen: (previous, current) => previous.user != current.user,
      child: Scaffold(
          body: Column(children: [
        Expanded(flex: 7, child: Container(color: Colors.red)),
        Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(kPadding * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Welcome to $appTitle!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: kPadding * 2),
                  const Text(
                    "Welcome to $appTitle! Discover personalized news and trending stories effortlessly. Let's get started!",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: kPadding * 2),
                  Center(
                    child: CircularProgressBuilder(
                        action: context.read<AuthCubit>().loginWithGoogle,
                        builder: (context, action, _) {
                          return ElevatedButton(
                            onPressed: action,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(kPadding * 10),
                              ),
                            ),
                            child: const Text("Sign in with Google"),
                          );
                        }),
                  ),
                  const SizedBox(height: kPadding * 2),
                ],
              ),
            ))
      ])),
    );
  }
}
