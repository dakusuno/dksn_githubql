import 'package:dksn_githubql/src/data/graphql/network/builder/firebase_builder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firebaseApiProvider = Provider(
    (ref) => FirebaseApi(firebaseAuth: ref.read(firebaseAuthProvider)));

class FirebaseApi {
  final FirebaseAuth _firebaseAuth;
  const FirebaseApi({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;
  Future<User?> signUp(
      {required String email,
      required String password,
      required String username}) async {
    return await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((valueUser) async {
      await valueUser.user!.updateDisplayName(username);
      return valueUser.user;
    });
  }

  Future<bool> checkEmail({required String email}) async {
    return await _firebaseAuth
        .fetchSignInMethodsForEmail(email)
        .then((value) => value.contains("password"));
  }

  Future<User?> signIn(
      {required String email, required String password}) async {
    return await _firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => value.user);
  }
}
