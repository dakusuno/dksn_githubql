import 'dart:async';

import 'package:dksn_githubql/src/data/graphql/__generated__/all_pokemon.data.gql.dart';
import 'package:dksn_githubql/src/data/graphql/__generated__/all_pokemon.var.gql.dart';
import 'package:ferry/ferry.dart';

abstract class PokemonRepository {
  Stream<OperationResponse<GAllPokemonData, GAllPokemonVars>> pokemons(
      int limit, int offset);
}
