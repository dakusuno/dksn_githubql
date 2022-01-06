import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ChatRepository {
  Future<DocumentReference> sendChat(String message);
  Query<Map<String, dynamic>> readChat();
}
