import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_services.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/best_sellar_books_cubit/best_sellar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/feature_book_cubit/feature_book_cubit.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBookCubit(
            HomeRepoImpl(ApiServices(Dio()), BookService(Dio())),
          )..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => BestSellarBooksCubit(
            HomeRepoImpl(ApiServices(Dio()), BookService(Dio())),
          )..fetchBestSellarBook(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,

        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,

        // home: SplashView(

        // ),
      ),
    );
  }
}
