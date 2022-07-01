import 'package:flutter_api_integration/controllers/home_controller.dart';
import 'package:flutter_api_integration/models/todo_model.dart';
import 'package:flutter_api_integration/services/json_placeholder_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class JsonPlaceholderServiceMock extends Mock
    implements JsonPlaceHolderService {}

void main() {
  test('deve preencher a lista de todos corretamente', () async {
    final service = JsonPlaceholderServiceMock();
    when((() => service.getTodos()))
        .thenAnswer((_) async => [TodoModel.stub()]);
    var controller = HomeController(service);
    await controller.fetchAllTodos();
    expect(controller.todos.length, 1);
  });
}
