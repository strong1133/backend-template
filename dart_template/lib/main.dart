import 'dart:io';

import 'package:fxvtRequester/controllers/home_controller.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';

void main() async {
  final overrideHeaders = {ACCESS_CONTROL_ALLOW_HEADERS: '*', 'Content-Type': 'application/octet-stream;charset=utf-8'};

  // Variable for PORT
  var PORT = 5500;

  final home = HomeController();


  var handler = const Pipeline().addMiddleware(corsHeaders(headers: overrideHeaders)).addHandler(home.handler);
  // Create server
  final server = await serve(handler, '0.0.0.0', PORT);

    // Server on message
  print('☀️ Server running on localhost:${server.port} ☀️');
}
