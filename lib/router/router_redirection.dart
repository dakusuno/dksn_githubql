import 'package:dksn_githubql/src/data/local/pref/app_pref.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginInfoProvider =
    ChangeNotifierProvider<LoginInfo>((ref) => LoginInfo());

class LoginInfo extends ChangeNotifier {
  LoginInfo() {
    init();
  }
  String? _userName;
  String? get userName => _userName;
  bool get loggedIn => _userName == null || _userName!.isEmpty ? false : true;
  void init() async {
    _userName = await AppPref().getId();
    notifyListeners();
  }

  void login(String userName) {
    AppPref().setId(id: userName);
    AppPref().getId().then((value) => print(value));
    _userName = userName;
    notifyListeners();
  }

  void logout() {
    print("logout");
    AppPref().setId(id: null);
    _userName = null;
    notifyListeners();
  }
}
