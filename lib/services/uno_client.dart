import 'package:flutter_api_integration/services/http_client_interface.dart';
import 'package:uno/uno.dart';

class UnoClient implements IHttpClient {
  final uno = Uno();
  @override
  Future get(String url) async {
    final response = await uno.get(url);
    return response.data;
  }
}
