import '../utils/export.dart';
import 'package:http/http.dart' as http;

class Apiservices extends GetxService {
  Future<http.Response> postcalling(String endpoint, Map data) async {
    http.Response response = await http.post(Uri.parse(endpoint), body: data);

    return response;
  }

  Future<http.Response> getcalling(
      String endpoint, Map<String, String> headers) async {
    http.Response response =
        await http.get(Uri.parse(endpoint), headers: headers);

    return response;
  }
}