import 'package:fxvtRequester/controllers/response_dto.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class HomeController {
  Handler get handler {
    final router = Router();

    ResponseDto responseDto = ResponseDto();

    router.get('/', (Request request) async {
      var req = request.url.queryParameters;

      print("REQ ${req}");

      return responseDto.responseHandler(res: 'success');
    });
    return router;
  }
}
