import 'package:dksn_githubql/src/data/graphql/network/apis/firebase_api.dart';
import 'package:dksn_githubql/src/domain/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepositoryProvider = Provider(
    (ref) => AuthRepositoryImpl(firebaseApi: ref.read(firebaseApiProvider)));

class AuthRepositoryImpl extends AuthRepository {
  final FirebaseApi _firebaseApi;
  AuthRepositoryImpl({required FirebaseApi firebaseApi})
      : _firebaseApi = firebaseApi;
  @override
  Future<bool> checkEmail(String email) {
    return _firebaseApi.checkEmail(email: email);
  }

  @override
  Future<User?> signIn(String email, String password) {
    return _firebaseApi.signIn(email: email, password: password);
  }

  @override
  Future<User?> signUp(String username, String email, String password) {
    return _firebaseApi.signUp(
        email: email, password: password, username: username);
  }
}
