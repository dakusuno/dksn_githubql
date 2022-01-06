import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState(
      {@Default(AsyncValue.data("")) AsyncValue<String> state,
      @Default("") String message}) = _ChatState;
}
