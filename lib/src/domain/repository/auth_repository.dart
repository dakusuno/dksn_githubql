import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<User?> signUp(String username, String email, String password);
  Future<User?> signIn(String email, String password);
  Future<bool> checkEmail(String email);
}
