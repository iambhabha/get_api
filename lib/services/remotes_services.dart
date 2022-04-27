import 'package:api_get/models/user.dart';
import 'package:http/http.dart' as http;

class remoteservices {
  Future<List<User>?> getusers() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    }
  }
}
