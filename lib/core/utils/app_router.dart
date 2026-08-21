import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly_app/features/search/presentaion/views/search_view.dart';
import 'package:bookly_app/features/splash/presentaion/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomView = '/homeView';
  static const kBookDitails = '/bookDitails';
  static const kSearchView = '/searchiew';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),

      GoRoute(
        path: kHomView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDitails,
        builder: (BuildContext context, GoRouterState state) {
          final book = state.extra as BookModel;
          return BookDetailsView(book: book);
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return SearchView();
        },
      ),
    ],
  );
}
