import 'dart:convert';
import 'package:http/http.dart' as http;

String url =
    'https://thealaddin.in/mmApi/api/show/menu-list?customer_id=1115&hotel_id=15';

class APICalls {
  Future<Map<String, dynamic>?> getList() async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
        return jsonResponse;
      } else {
        print('Request failed with status: ${response.statusCode}.');
        return null;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
