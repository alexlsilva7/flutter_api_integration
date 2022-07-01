import 'package:flutter_api_integration/models/todo_model.dart';
import 'package:flutter_api_integration/services/http_client_interface.dart';

class JsonPlaceHolderService {
  final url = 'https://jsonplaceholder.typicode.com/todos';
  final IHttpClient client;

  JsonPlaceHolderService(this.client);

  Future<List<TodoModel>> getTodos() async {
    final body = (await client.get(url)) as List;
    return body.map((e) => TodoModel.fromJson(e)).toList();
  }
}
