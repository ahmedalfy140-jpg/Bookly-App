import 'package:dio/dio.dart';

class ApiServices {
  // final baseUrl ='https://www.googleapis.com/books/v1/volumes?';
  // final apiKey='AIzaSyCJewSRb7k3o4QyKNoL3aGj9dYWV_vZ95w';

  final Dio _dio;

  ApiServices( this._dio);
  Future<Map<String,dynamic>> get()async{
    var response =await _dio.get('https://www.googleapis.com/books/v1/volumes?q=flutter&key=AIzaSyCJewSRb7k3o4QyKNoL3aGj9dYWV_vZ95w');
    return response.data;
  }

}

