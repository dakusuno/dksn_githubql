import 'package:dksn_githubql/src/data/graphql/network/apis/chat_api.dart';
import 'package:dksn_githubql/src/presentation/global.widgets/pkmn_text_input.dart';
import 'package:dksn_githubql/src/presentation/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late FocusNode _emailFn;
  final _emailRe = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
  String email = "";
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _usernameTextEditingController;
  String username = "";
  String password = "";
  @override
  void initState() {
    _emailFn = FocusNode()
      ..addListener(() {
        if (!_emailFn.hasPrimaryFocus && _emailRe.hasMatch(email)) {
          ref.read(loginViewModelProvider.notifier).checkEmail(email);
        }
      });
    _emailTextEditingController = TextEditingController()
      ..addListener(() {
        setState(() {
          email = _emailTextEditingController.text;
        });
      });
    _passwordTextEditingController = TextEditingController()
      ..addListener(() {
        setState(() {
          password = _passwordTextEditingController.text;
        });
      });
    _usernameTextEditingController = TextEditingController()
      ..addListener(() {
        setState(() {
          username = _usernameTextEditingController.text;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _viewModel = ref.watch(loginViewModelProvider);
    final _notifier = ref.watch(loginViewModelProvider.notifier);
    final _isEmailAvailable = ref.watch(
        loginViewModelProvider.select((value) => value.isEmailAvailable));
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                _viewModel.state.maybeWhen(
                    data: (data) {
                      if (data != null) {
                        WidgetsBinding.instance
                            ?.addPostFrameCallback((timeStamp) {
                          context.go("/");
                        });
                      }
                      return const SizedBox();
                    },
                    orElse: () => const SizedBox()),
                PkmnTextInput(
                  key: const Key("email"),
                  pkmnFokusNode: _emailFn,
                  controller: _emailTextEditingController,
                  hintText: "Masukkan email anda",
                  pkmnLabelText: "Email",
                  // pkmnFokusNode: _emailFn,
                  pkmnOnChange: (text) {},
                ),
                const Divider(
                  height: 8,
                  color: Colors.transparent,
                ),
                if (!_isEmailAvailable)
                  PkmnTextInput(
                    pkmnLabelText: "username",
                    hintText: "Masukkan username",
                    controller: _usernameTextEditingController,
                  ),
                const Divider(
                  height: 8,
                  color: Colors.transparent,
                ),
                PkmnTextInput(
                  pkmnLabelText: "Password",
                  hintText: "Masukkan password",
                  pkmnObsecureText: true,
                  controller: _passwordTextEditingController,
                ),
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
            if (username.length > 7 && password.length > 7) {
              _notifier.signUp(email, username, password);
              print(email);
              print(username);
              print(password);
            } else {
              return;
            }
          } else {
            // if (password.length > 7) {
            //   _notifier.signIn(_emailText, _password);
            //   print("a");
            // } else {
            //   return;
            // }
          }
        },
      ),
    );
  }
}
