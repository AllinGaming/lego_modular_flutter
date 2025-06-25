import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class LegoListService {
  Future<List<String>> fetchItems();
}

@LazySingleton(as: LegoListService)
class LegoListServiceImpl implements LegoListService {
  final Dio _dio = Dio();

  @override
  Future<List<String>> fetchItems() async {
    final response = await _dio.get('https://jsonplaceholder.typicode.com/posts');
    return List<String>.from((response.data as List).map((e) => e['title']));
  }
}