import 'dart:async';

import 'package:dksn_githubql/src/client.dart';
import 'package:dksn_githubql/src/data/graphql/__generated__/all_pokemon.data.gql.dart';
import 'package:dksn_githubql/src/data/graphql/__generated__/all_pokemon.req.gql.dart';
import 'package:dksn_githubql/src/data/graphql/__generated__/all_pokemon.var.gql.dart';
import 'package:dksn_githubql/src/domain/repository/pokemon_repository.dart';
import 'package:ferry/ferry.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final clientProvider = Provider<Client>((ref) => initClient());

final pokemonRepositoryProvider = Provider<PokemonRepository>(
    (ref) => PokemonRepositoryImpl(client: ref.watch(clientProvider)));

class PokemonRepositoryImpl extends PokemonRepository {
  Client _client;
  PokemonRepositoryImpl({required Client client}) : _client = client;

  @override
  Stream<OperationResponse<GAllPokemonData, GAllPokemonVars>> pokemons(
      int limit, int offset) {
    var pokemonReq = GAllPokemonReq((builder) => builder
      ..vars.limit = limit
      ..vars.offset = offset);
    return _client.request(pokemonReq);
  }
}
