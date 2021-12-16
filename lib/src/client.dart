import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

Client initClient() {
  final link = HttpLink("https://pokeapi.dev");
  return Client(link: link);
}
