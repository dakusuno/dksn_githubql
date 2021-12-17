import 'package:dksn_githubql/src/data/graphql/__generated__/all_pokemon.data.gql.dart';
import 'package:dksn_githubql/src/data/repository/pokemon_repository_impl.dart';
import 'package:dksn_githubql/src/domain/repository/pokemon_repository.dart';
import 'package:dksn_githubql/src/presentation/home/home_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:built_collection/built_collection.dart';

final homeViewModelProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, HomeState>(
        (ref) => HomeViewModel(ref.read(pokemonRepositoryProvider)));

class HomeViewModel extends StateNotifier<HomeState> {
  PokemonRepository _repository;
  HomeViewModel(PokemonRepository pokemonRepository)
      : _repository = pokemonRepository,
        super(HomeState(pokemons: <GAllPokemonData_pokemons_results>[])) {
    load();
  }
  int offset = 0;
  void load() {
    print("load");
    state = state.copyWith(state: const AsyncValue.loading());
    _repository.pokemons(20, offset).listen((event) {
      print(event.loading);
      if (!event.loading) {
        if (event.hasErrors) {
          if (event.graphqlErrors != null) {
            state = state.copyWith(
                state: AsyncValue.error(event.graphqlErrors as Object));
          }
          if (event.linkException != null) {
            state = state.copyWith(
                state: AsyncValue.error(event.linkException as Object));
          }
        } else {
          var resultPokemon = event.data?.pokemons?.results;
          state = state.copyWith(state: AsyncValue.data([]));
          state.pokemons.addAll(resultPokemon?.toList() ?? []);
        }
      }
    });
  }

  void loadMore() {
    offset += 20;
    load();
  }
}
