import 'package:dksn_githubql/src/presentation/chat.pokemon/widgets/chat_line_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatLineWidget extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listChat = ref.watch(chatLineViewModelProvider);
    return listChat.maybeWhen(
      orElse: () => SizedBox(),
      data: (data) => ListView.builder(
        itemBuilder: (context, index) => Text(data[index].text),
        itemCount: data.length,
      ),
    );
  }
}
