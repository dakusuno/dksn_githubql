import 'package:dksn_githubql/src/data/model/__generated__/pokemon_fragment.data.gql.dart';
import 'package:dksn_githubql/src/presentation/global.widgets/pkmn_app_bar.dart';
import 'package:dksn_githubql/src/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonState = ref.watch(homeViewModelProvider);
    final scrollController = useScrollController();
    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.position.maxScrollExtent ==
            scrollController.position.pixels) {
          if (pokemonState.state is AsyncData) {
            ref.read(homeViewModelProvider.notifier).loadMore();
          }
        }
      });
    });
    return Scaffold(
        appBar: PkmnAppBar(title: Text("Halo")).build(context),
        body: Container(
            child: Stack(
          children: [
            GridView.builder(
              controller: scrollController,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 362,
                  childAspectRatio: 362 / 580,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4),
              itemBuilder: (context, index) {
                return Container(
                  height: 580,
                  width: 362,
                  child: InkWell(
                    child: Center(
                      child: Text(pokemonState.pokemons[index].name),
                    ),
                    onTap: () {
                      GoRouter.of(context).go('/detail/$index');
                    },
                  ),
                );
              },
              itemCount: pokemonState.pokemons.length,
            ),
            if (pokemonState.state is AsyncLoading)
              const Positioned(
                bottom: 10,
                right: 10,
                child: Text("Yahaha Loading"),
              )
          ],
        )));
  }
}
