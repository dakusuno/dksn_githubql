import 'package:dksn_githubql/src/data/model/__generated__/pokemon_fragment.data.gql.dart';
import 'package:dksn_githubql/src/data/repository/pokemon_repository_impl.dart';
import 'package:dksn_githubql/src/domain/repository/pokemon_repository.dart';
import 'package:dksn_githubql/src/presentation/model/pokemon_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeViewModelProvider = StateNotifierProvider.autoDispose<HomeViewModel,
        AsyncValue<List<GPokemonCard>>>(
    (ref) => HomeViewModel(ref.read(pokemonRepositoryProvider)));

class HomeViewModel extends StateNotifier<AsyncValue<List<GPokemonCard>>> {
  PokemonRepository _repository;
  HomeViewModel(PokemonRepository pokemonRepository)
      : _repository = pokemonRepository,
        super(AsyncValue.loading()) {
    load();
  }
  final pokemons = <GPokemonCard>[];
  int offset = 0;
  void load() {
    state = const AsyncValue.loading();
    _repository.pokemons(50, offset).listen((event) {
      if (!event.loading) {
        if (event.hasErrors) {
          if (event.graphqlErrors != null) {
            state = AsyncValue.error(event.graphqlErrors as Object);
          }
          if (event.linkException != null) {
            state = AsyncValue.error(event.linkException as Object);
          }
        } else {
          pokemons.addAll(event.data!.pokemons!.results!.toList());
          state = AsyncValue.data(pokemons);
        }
      }
    });
  }

  void loadMore() {
    offset += 50;
    load();
  }
}
