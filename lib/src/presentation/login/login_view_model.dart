import 'package:dksn_githubql/router/router_redirection.dart';
import 'package:dksn_githubql/src/data/repository/auth_repository_impl.dart';
import 'package:dksn_githubql/src/domain/repository/auth_repository.dart';
import 'package:dksn_githubql/src/presentation/login/login_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginViewModelProvider =
    StateNotifierProvider.autoDispose<LoginViewModel, LoginState>((ref) =>
        LoginViewModel(
            ref.read(authRepositoryProvider), ref.read(loginInfoProvider)));

class LoginViewModel extends StateNotifier<LoginState> {
  final AuthRepository _authRepository;
  final LoginInfo _loginInfo;
  LoginViewModel(AuthRepository authRepository, LoginInfo loginInfo)
      : _authRepository = authRepository,
        _loginInfo = loginInfo,
        super(LoginState());
  void checkEmail(String email) {
    state = state.copyWith(emailState: const AsyncValue.loading());
    _authRepository.checkEmail(email).then((value) {
      state = state.copyWith(
          isEmailAvailable: value, emailState: const AsyncValue.data(2));
    });
  }

  void signIn(String email, String password) {
    state = state.copyWith(state: const AsyncValue.loading());
    _authRepository.signIn(email, password).then((value) {
      _loginInfo.login(value!.displayName!);
      state = state.copyWith(state: AsyncValue.data(value));
    });
  }

  void signUp(String email, String username, String password) {
    state = state.copyWith(state: const AsyncValue.loading());
    _authRepository.signUp(username, email, password).then((value) {
      _loginInfo.login(value!.uid);
      state = state.copyWith(state: AsyncValue.data(value));
    });
  }
}
