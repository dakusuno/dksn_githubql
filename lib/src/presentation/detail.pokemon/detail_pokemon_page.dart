import 'package:dksn_githubql/router/router_redirection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailPokemonPage extends ConsumerWidget {
  final int id;
  const DetailPokemonPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Container(
          child: Column(
        children: [
          Text("Pokemon $id"),
          ElevatedButton(
              onPressed: () async {
                ref.read(loginInfoProvider).logout();
                return GoRouter.of(context).go("/");
              },
              child: Text("Logout"))
        ],
      )),
    );
  }
}
