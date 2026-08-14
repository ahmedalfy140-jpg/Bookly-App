

import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_services.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() async{
  runApp(const BooklyApp());
   final bookService = BookService(Dio());

  final books = await bookService.fetchBooks();

  for (var book in books) {
  
    print(book.title);
    print(book.author);
    print(book.image);
    

    
    print('----------------');
  }
}


class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      debugShowCheckedModeBanner: false,
      
     
      // home: SplashView(

      // ),
    );
  }
}

