import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';

import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const kHomeView ='/homeView';
    static const kBookView ='/bookview';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
     GoRoute(
      path:kHomeView,
      builder: (context, state) => const HomeView(),
    ),

    GoRoute(
      path:kBookView,
      builder: (context, state) => const BookDetailsView(),
    ),
  ],
);
}