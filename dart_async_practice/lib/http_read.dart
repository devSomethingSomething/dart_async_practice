import 'dart:convert';

import 'package:http/http.dart';

class HttpRead {
  HttpRead();

  Future<Map<String, dynamic>> fetchData() async {
    final response = await get(
      Uri.parse('https://dl.dropbox.com/s/3lh91mqoesofttl/test.json?dl=0'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to get the data');
    }
  }
}
