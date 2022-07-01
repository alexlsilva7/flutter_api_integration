import 'package:flutter_api_integration/controllers/home_controller.dart';
import 'package:flutter_api_integration/services/http_client_interface.dart';
import 'package:flutter_api_integration/services/json_placeholder_service.dart';
import 'package:flutter_api_integration/services/uno_client.dart';
import 'package:flutter_api_integration/views/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  // HomeController(JsonPlaceHolderService(DioClient()));
  @override
  List<Bind> get binds => [
        // Bind.singleton<IHttpClient>((i) => DioClient()),
        // Bind.singleton<IHttpClient>((i) => HttpPackageClient()),
        Bind.singleton<IHttpClient>((i) => UnoClient()),
        Bind.singleton((i) => JsonPlaceHolderService(i())),
        Bind.singleton((i) => HomeController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => HomePage()),
      ];
}
