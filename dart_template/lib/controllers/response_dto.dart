import 'dart:convert';
import 'dart:developer';

import 'package:shelf/shelf.dart';

class ResponseDto {
  final cors = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Request-Headers": "*",
    "Access-Control-Resqust-Method": "*",
    "content-type": "application/json",
  };

  final corsFxVT = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Request-Headers": "*",
    "Access-Control-Resqust-Method": "*",
    "content-type": "application/octet-stream; charset=utf-8",
    "Content-Disposition": "",
  };

  Map<String, dynamic> responseBody = {"timeStamp": "", "statusCode": 200, "errFlag": false, "errMsg": '', "data": {}};

  Response responseHandler({required var res}) {
    // print();
    responseBody['timeStamp'] = DateTime.now().toString();
    return Response.ok(jsonEncode(responseBody), headers: cors);
  }
}
