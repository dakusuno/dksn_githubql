import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dksn_githubql/src/data/graphql/network/apis/chat_api.dart';
import 'package:dksn_githubql/src/domain/repository/chat_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatRepositoryProvider = Provider<ChatRepository>(
    (ref) => ChatRepositoryImpl(ref.read(chatApiProvider)));

class ChatRepositoryImpl extends ChatRepository {
  ChatApi _chatApi;
  ChatRepositoryImpl(ChatApi chatApi) : _chatApi = chatApi;
  @override
  Future<DocumentReference> sendChat(String message) async {
    return await _chatApi.insertMessages(message).then((value) => value);
  }

  @override
  Query<Map<String, dynamic>> readChat() {
    return _chatApi.readChat();
  }
}
