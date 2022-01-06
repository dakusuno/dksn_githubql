import 'package:dksn_githubql/src/data/graphql/network/apis/chat_api.dart';
import 'package:dksn_githubql/src/presentation/chat.pokemon/chat_view_model.dart';
import 'package:dksn_githubql/src/presentation/chat.pokemon/widgets/chat_line_widget.dart';
import 'package:dksn_githubql/src/presentation/global.widgets/pkmn_app_bar.dart';
import 'package:dksn_githubql/src/presentation/global.widgets/pkmn_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatPokemonPage extends HookConsumerWidget {
  const ChatPokemonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _textController = useTextEditingController();
    final _message = useState<String?>("");
    final _notifier = ref.watch(chatViewModelProvider.notifier);
    useEffect(() {
      void _listener() => print("a");
      _textController.addListener(_listener);
      return () {
        _textController.removeListener(_listener);
      };
    }, [_textController, _message, key]);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text(_message.value!),
      ),
      body: Stack(
        children: <Widget>[
          ChatLineWidget(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      _notifier.sendChat(_message.value!);
                      _textController.clear();
                    },
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
