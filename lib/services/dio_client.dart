import 'package:dio/dio.dart';
import 'package:flutter_api_integration/services/http_client_interface.dart';

class DioClient implements IHttpClient {
  final Dio dio = Dio();

  @override
  Future get(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
