import 'package:dksn_githubql/src/data/model/__generated__/pokemon_fragment.data.gql.dart';
import 'package:dksn_githubql/src/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget createGrid(
      List<GPokemonCard> pokemons, ScrollController scrollController,
      {bool isLoading = false, bool isError = false}) {
    return Stack(
      children: [
        GridView.builder(
          controller: scrollController,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 362,
              childAspectRatio: 362 / 580,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4),
          itemBuilder: (context, index) {
            return Text(pokemons[index].name);
          },
          itemCount: pokemons.length,
        ),
        if (isLoading)
          const Positioned(
            bottom: 10,
            right: 10,
            child: Text("Yahaha Loading"),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemons = ref.watch(homeViewModelProvider.notifier).pokemons;
    final scrollController = useScrollController();
    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.position.maxScrollExtent ==
            scrollController.position.pixels) {
          ref.read(homeViewModelProvider.notifier).loadMore();
        }
      });
    });
    return Scaffold(
        appBar: AppBar(title: Text("Halo")),
        body: Container(
          child: ref.watch(homeViewModelProvider).when(
              data: (_) => createGrid(pokemons, scrollController),
              error: (_, __) {
                return createGrid(pokemons, scrollController);
              },
              loading: () =>
                  createGrid(pokemons, scrollController, isLoading: true)),
        ));
  }
}
