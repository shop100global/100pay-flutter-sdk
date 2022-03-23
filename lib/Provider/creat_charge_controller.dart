import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop100_pay/Model/creat_charge_api.dart';

var refId = '012232';
Future<The100Pay> create100Pay(String text  ) async {
  var params = {
    "ref_id": "012232",
    "customer": {
      "user_id": "333",
      "name": "BRAINY",
      "phone": "33333",
      "email": "BRAINY@YAHOO.COM"
    },
    "billing": {
      "description": "PAYMENT FOR TON TEST ORDER",
      "amount": "10000",
      "country": "NG",
      "currency": "NGN",
      "vat": "10",
      "pricing_type": "fixed_price"
    },
    "metadata": {"is_approved": "yes"},
    "call_back_url": "http://localhost:8000/verify-payment",
    "userId": "6143bfb7fe85e0020bf243f9",
    "charge_source": "payment_page"
  };
  final response =
      await http.post(Uri.parse('https://api.shop100.co/api/v1/pay/charge'),
          headers: {
            "api-key":
                "TEST;PK;eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6IjYyMzQ2NTY2NjIwNDNmMDAyZTc2NzJiMSIsInVzZXJJZCI6IjYyMzQ1YzhiNjIwNDNmMDAyZTc2NzI4ZSIsImlhdCI6MTY0NzYwMDk5OH0.9Sg_ccidwAvHy_ZjtKXkMaZul_DL3-hNsiBKXQ8u1qg"
          },
          body: json.encode(params));

  print(response);

  if (response.statusCode == 200) {
    final body = response.body;
    print(body);
    print(response.body);

    final the100Pay = the100PayFromJson(body);
    print(the100Pay);
    return the100Pay;
  } else {
    final body = response.body;

    throw json.decode(body)['error'];
  }
}
