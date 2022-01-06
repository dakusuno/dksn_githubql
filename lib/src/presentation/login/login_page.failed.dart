import 'dart:math';

import 'package:dksn_githubql/router/router_redirection.dart';
import 'package:dksn_githubql/src/presentation/global.widgets/pkmn_text_input.dart';
import 'package:dksn_githubql/src/presentation/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _emailRe = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    String _emailText = "";
    final _notifier = ref.watch(loginViewModelProvider.notifier);
    final _emailFn = useFocusNode(
      skipTraversal: true,
      descendantsAreFocusable: false,
    );

    String _usernameText = "";
    String _password = "";
    final _isEmailAvailable = ref.watch(
        loginViewModelProvider.select((value) => value.isEmailAvailable));
    final _emailController = useTextEditingController();

    _emailController.addListener(() {});

    final _viewModel = ref.watch(loginViewModelProvider);
    var _passwordInputController = useTextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                PkmnTextInput(
                  key: const Key("email"),
                  pkmnFokusNode: _emailFn
                    ..addListener(() {
                      if (!_emailFn.hasPrimaryFocus &&
                          _emailText.isNotEmpty &&
                          _emailRe.hasMatch(_emailText)) {
                        ref
                            .read(loginViewModelProvider.notifier)
                            .checkEmail(_emailText);
                      }
                    }),
                  controller: _emailController
                    ..addListener(() {
                      _emailText = _emailController.text ?? "";
                      print(_emailText);
                    }),
                  hintText: "Masukkan email anda",
                  pkmnLabelText: "Email",
                  // pkmnFokusNode: _emailFn,
                  pkmnOnChange: (text) {},
                ),
                const Divider(
                  height: 8,
                  color: Colors.transparent,
                ),
                if (!_viewModel.isEmailAvailable)
                  PkmnTextInput(
                    pkmnLabelText: "username",
                    hintText: "Masukkan username",
                    pkmnOnChange: (text) {
                      _usernameText = text ?? "";
                    },
                  ),
                const Divider(
                  height: 8,
                  color: Colors.transparent,
                ),
                PkmnTextInput(
                    pkmnLabelText: "Password",
                    hintText: "Masukkan password",
                    pkmnObsecureText: true,
                    pkmnOnChange: (text) {
                      _password = text ?? "";
                    }),
                Text(_isEmailAvailable.toString())
              ],
            ),
          ),
          if (_viewModel.emailState is AsyncLoading)
            const Positioned(
                bottom: 20,
                right: 20,
                child: SizedBox(
                  height: 12,
                  width: 12,
                  child: CircularProgressIndicator(),
                )),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        child: Text(_viewModel.isEmailAvailable ? "Login" : "Register"),
        onPressed: () {
          // print(_emailText);
          // print(_usernameText);
          // print(_password);
          if (!_viewModel.isEmailAvailable) {
            if (_usernameText.length > 7 && _password.length > 7) {
              // _notifier.signUp(_emailText, _usernameText, _password);
              print(_emailText);
              print(_usernameText);
              print(_password);
            } else {
              return;
            }
          } else {
            if (_password.length > 7) {
              _notifier.signIn(_emailText, _password);
              print("a");
            } else {
              return;
            }
          }
        },
      ),
    );
  }
}
