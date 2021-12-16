import 'package:dksn_githubql/src/data/model/__generated__/pokemon_fragment.data.gql.dart';
import 'package:dksn_githubql/src/data/model/__generated__/pokemon_fragment.var.gql.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_state.freezed.dart';

@freezed
class PokemonState with _$PokemonState {
  factory PokemonState.data({List<GPokemonCard>? pokemon}) = _Data;
  factory PokemonState.loading(
      {List<GPokemonCard>? pokemon, required int loading}) = _Loading;
  factory PokemonState.error({List<GPokemonCard>? pokemon, Object? error}) =
      _Error;
}
