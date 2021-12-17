import 'package:built_collection/built_collection.dart';
import 'package:dksn_githubql/src/data/graphql/__generated__/all_pokemon.data.gql.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState(
      {@Default(AsyncValue.loading())
          AsyncValue<List<GAllPokemonData_pokemons_results>> state,
      required List<GAllPokemonData_pokemons_results> pokemons}) = _HomeState;
}
