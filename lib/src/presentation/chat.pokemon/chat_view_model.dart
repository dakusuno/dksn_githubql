import 'package:dksn_githubql/src/data/repository/chat_repository_impl.dart';
import 'package:dksn_githubql/src/domain/repository/chat_repository.dart';
import 'package:dksn_githubql/src/presentation/chat.pokemon/chat_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatViewModelProvider = StateNotifierProvider(
    (ref) => ChatViewModel(ref.read(chatRepositoryProvider)));

class ChatViewModel extends StateNotifier<ChatState> {
  ChatRepository _chatRepository;
  ChatViewModel(ChatRepository chatRepository)
      : _chatRepository = chatRepository,
        super(ChatState());
  void sendChat(String message) {
    state = state.copyWith(state: const AsyncValue.loading());
    _chatRepository.sendChat(message).then((value) {
      state = state.copyWith(state: const AsyncValue.data(""));
    });
  }
}
