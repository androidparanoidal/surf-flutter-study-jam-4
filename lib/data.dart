import 'package:http/http.dart' as http;
import 'dart:convert';

const url = 'https://eightballapi.com/api';

class APIData {
  Future<dynamic> getPrediction() async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        final pred_result = data['reading'];
        print(pred_result);
        return pred_result;
      } else {
        print('Error:');
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }
}
