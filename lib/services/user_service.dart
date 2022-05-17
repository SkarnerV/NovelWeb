import 'const.dart';
import 'package:http/http.dart' as http;

class UserService {
  Login(String un, String pwd) async {
    var apiUrl = "/login?";

    http.Response res = await http.post(
        Uri.parse(Const.baseUrl + apiUrl + 'un=' + un + '&' + 'pwd=' + pwd));
    try {
      if (res.statusCode == 200) {}
    } catch (e) {
      print(e);
    }
  }
}
