import 'dart:convert';
import 'package:shop100_pay/Model/creat_charge_api.dart';
import 'package:http/http.dart' as http;

class The100PayApiProvider {
  Future<The100Pay> getThe100Pay() async {
    final url = Uri.parse('http/:{{local-api}}/api/v1/pay/charge');
   // final url = Uri.parse("${baseUrl().url}/v1/bibles");

    final response = await http
        .get(url, headers: {});
    print(response);

    if (response.statusCode == 200) {
      final body = response.body;
      print(body);

       final the100Pay = the100PayFromJson(body);

      return the100Pay;
    } else {
      final body = response.body;
      print(body);
      throw json.decode(body)['error'];
    }
  }
}