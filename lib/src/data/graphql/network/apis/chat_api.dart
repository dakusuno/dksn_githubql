import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dksn_githubql/src/data/graphql/network/builder/firebase_builder.dart';
import 'package:dksn_githubql/src/data/model/public_chat.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatApiProvider = Provider((ref) => ChatApi(
    ref.read(firebaseFirestoreProvider), ref.read(firebaseAuthProvider)));

class ChatApi {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;
  ChatApi(FirebaseFirestore firebaseFirestore, FirebaseAuth firebaseAuth)
      : _firebaseFirestore = firebaseFirestore,
        _firebaseAuth = firebaseAuth;
  Future<DocumentReference> insertMessages(String message) async {
    return await _firebaseFirestore
        .collection("public_chat")
        .add(<String, dynamic>{
      'text': message,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'name': _firebaseAuth.currentUser!.displayName,
      'userId': _firebaseAuth.currentUser!.uid
    });
  }

  Query<Map<String, dynamic>> readChat() {
    return _firebaseFirestore.collection("public_chat").orderBy("timestamp");
  }
}
