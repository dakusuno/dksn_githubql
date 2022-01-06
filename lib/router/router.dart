import 'package:dksn_githubql/router/router_redirection.dart';
import 'package:dksn_githubql/src/presentation/chat.pokemon/chat_pokemon_page.dart';
import 'package:dksn_githubql/src/presentation/detail.pokemon/detail_pokemon_page.dart';
import 'package:dksn_githubql/src/presentation/home/home_page.dart';
import 'package:dksn_githubql/src/presentation/login/login_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

GoRouter router(WidgetRef ref) {
  final loginInfo = ref.read(loginInfoProvider);
  return GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
              path: "detail/:id",
              builder: (context, state) => DetailPokemonPage(
                  id: int.tryParse(state.params['id'] ?? "0") ?? 0)),
          GoRoute(path: "login", builder: (context, state) => LoginPage()),
          GoRoute(path: "chat", builder: (context, state) => ChatPokemonPage())
        ],
      ),
    ],
    initialLocation: "/",
    redirect: (state) {
      final re = RegExp(r'\/detail\/\d');
      final loggedIn = loginInfo.loggedIn;
      final inDetail = re.hasMatch(state.location) && state.location == "/chat";
      // the user is not logged in and not headed to /login, they need to login
      if (inDetail && !loggedIn) return '/login';

      // the user is logged in and headed to /login, no need to login again

      // no need to redirect at all
      return null;
    },
  );
}
