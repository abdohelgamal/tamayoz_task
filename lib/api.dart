import 'package:http/http.dart' as http;

class ApiFunctions {
  static get _headers => {"accept": "application/json",
  "Content-Type" : "application/json"};
  static String token = '';
  static Uri _api({String url = '/'}) {
    return Uri.parse('https://auth.tamayyuzcenter.com/api$url');
  }

  static getxsfrtoken() async {
    return await http.get(Uri.parse('https://auth.tamayyuzcenter.com/sanctum/csrf-cookie'),
        headers: _headers);
  }

  static signin(String mail, String pass) {
    return http.post(_api(url: '/login'),
        headers: _headers, body: {"email": mail, "password": pass});
  }
}
