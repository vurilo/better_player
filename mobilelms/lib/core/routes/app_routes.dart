// place public routes here
import 'package:go_router/go_router.dart';
import 'package:mobilelms/features/splash_screen/presentation/pages/splash_screen_page.dart';

var publicRoute = [];

class AppRoute {
  GoRouter get router => _goRouter;
  late final GoRouter _goRouter =
      GoRouter(debugLogDiagnostics: true, redirect: _authGuard, routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreenPage(),
    ),
  ]);
  String? _authGuard(GoRouterState state) {
    return null;
  }
}
