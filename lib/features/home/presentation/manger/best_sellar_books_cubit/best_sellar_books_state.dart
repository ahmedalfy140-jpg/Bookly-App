import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class BestSellarBooksState {}
  


  class BestSellarBooksInitail extends BestSellarBooksState{}
  class BestSellarBooksLoading extends BestSellarBooksState{}
  class BestSellarBooksFailure extends BestSellarBooksState{
    final String errMessage;

  BestSellarBooksFailure(this.errMessage);
  }
  class BestSellarBooksSuccess extends BestSellarBooksState{
    final List<BookModel>books;

  BestSellarBooksSuccess(this.books);
  }
