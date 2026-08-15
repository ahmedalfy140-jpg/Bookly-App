import 'package:dio/dio.dart';


class BookService {
  final Dio dio;

  BookService(this.dio);

  Future<Map<String,dynamic>> fetchBooks() async {
    var response = await dio.get(
      'https://www.googleapis.com/books/v1/volumes?q=programing&key=AIzaSyCJewSRb7k3o4QyKNoL3aGj9dYWV_vZ95w',
    //   queryParameters: {
    //     'q': 'programming',
    //   },
    );
    return response.data;

  //   List books = response.data['items'] ?? [];

  //   return books
  //       .map((book) => BookModel.fromJson(book))
  //       .toList();
  // }
}

}