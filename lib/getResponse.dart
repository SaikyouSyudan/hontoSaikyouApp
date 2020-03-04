import 'package:http/http.dart' as http;
import 'dart:async';


// ignore: camel_case_types
class getResponse {
  // http通信した際にデータを格納する変数。
  // 多分jsonとかだと思うけど、一応型は決めないから使うときにparseして
  dynamic data = '';

  // urlString => String or Uri
  Future<http.Response> fetchGet(dynamic urlString) async {
    // uri使うときはuribuilder使って。めんどいから使わんと思うけど
    final response = await http.get(urlString);
    if (response.statusCode.toString().startsWith('2')) {
      print("success");
      data = response;
      return data;
    } else {
      print("error");
      data = response;
      return data;
    }
  }
}