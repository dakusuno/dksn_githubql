import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default(AsyncValue.data(null)) AsyncValue<User?> state,
    @Default(AsyncValue.data(1)) AsyncValue<int> emailState,
    @Default(true) bool isEmailAvailable,
  }) = _LoginState;
}
