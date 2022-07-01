import 'package:flutter/cupertino.dart';
import 'package:flutter_api_integration/models/todo_model.dart';
import 'package:flutter_api_integration/services/json_placeholder_service.dart';

class HomeController extends ChangeNotifier {
  final JsonPlaceHolderService _service;
  HomeController(this._service);

  List<TodoModel> todos = [];

  Future<void> fetchAllTodos() async {
    todos = await _service.getTodos();
    notifyListeners();
  }
}
