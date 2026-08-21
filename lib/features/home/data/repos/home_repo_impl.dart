import 'package:bookly_app/core/errors/faiuler.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_services.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  final BookService bookService;

  HomeRepoImpl(this.apiServices, this.bookService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellarBook() async{
   try {
     var data = await apiServices.get();
     List<BookModel> books =[];
     for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
       
     }
     return right(books);
  //  }   catch (e) {
  //   if(e is DioException){
  //      return left(ServerFailure.fromDioError(e));

  //   }
  //   return left(ServerFailure(e.toString()));
    
   
     
  //  }
   }

  catch (e) {
  // print('====================');
  // print(s);
  // print('ERROR: $e');

  if (e is DioException) {
    // print('STATUS CODE: ${e.response?.statusCode}');
    // print('RESPONSE: ${e.response?.data}');
    // print('MESSAGE: ${e.message}');
  }

  // print('====================');

  return left(ServerFailure(e.toString()));
}
   
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBook()async {

    try {
      var data=await apiServices.get();
      List<BookModel> books =[];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
        
      }
      return right(books);
    }   catch (e) {
    if(e is DioException){
       return left(ServerFailure.fromDioError(e));

    }
    return left(ServerFailure(e.toString()));
    
   
    }
    
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooks() async{
    try {
      var data = await bookService.fetchBooks();
      List<BookModel>books=[];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
        
      }
      return right(books);
    }   catch (e) {
       if(e is DioException){
       return left(ServerFailure.fromDioError(e));

    }
    return left(ServerFailure(e.toString()));
    
      
    }
   

   
  }
}