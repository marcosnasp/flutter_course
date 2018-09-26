import 'dart:async';
import 'dart:io';

Future main() async {
  HttpServer server = await HttpServer.bind(
    "https://rebounce.online/",
    80,
  );
  await for (var request in server) {
    handleRequest(request);
  }
}

void handleRequest(HttpRequest request) {
  try {
    if (request.method == 'GET') {
      handleGet(request);
    }
  } catch (e) {
    print('Exception in handleRequest: $e');
  }
  print('Request handled.');
}

void handleGet(HttpRequest request) {
  final response = request.response;
  response.statusCode = HttpStatus.ok;
}