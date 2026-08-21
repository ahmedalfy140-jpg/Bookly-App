import 'package:dio/dio.dart';

class BookService {
  final Dio dio;

  BookService(this.dio);

  Future<Map<String, dynamic>> fetchBooks(
   
  ) async {
    final response = await dio.get(
      'https://www.googleapis.com/books/v1/volumes?q=flutter&key=AIzaSyCJewSRb7k3o4QyKNoL3aGj9dYWV_vZ95w',
     
    );

    return response.data;
  }
}