import 'package:dio/dio.dart';
import '../models/book_model.dart';

class BookService {
  final Dio dio;

  BookService(this.dio);

  Future<List<BookModel>> fetchBooks() async {
    final response = await dio.get(
      'https://www.googleapis.com/books/v1/volumes',
      queryParameters: {
        'q': 'programming',
      },
    );

    List books = response.data['items'] ?? [];

    return books
        .map((book) => BookModel.fromJson(book))
        .toList();
  }
}