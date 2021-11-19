import 'package:http/http.dart' as http;

class ApiFunctions {
  static get _headers => {
        "accept": "application/json",
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      };
  static String token = '2|6taQMXGvpWa6x4lXuC9M9TO6qh4CiOceEZYzOObR';
  static Uri _api({String url = '/'}) {
    return Uri.parse('https://auth.tamayyuzcenter.com/api$url');
  }

  static Future<http.Response> getxsfrtoken() async {
    return await http.get(
        Uri.parse('https://auth.tamayyuzcenter.com/sanctum/csrf-cookie'),
        headers: _headers);
  }

  static signin(String mail, String pass) {
    return http.post(_api(url: '/login'),
        headers: _headers, body: {"email": mail, "password": pass});
  }

  static Future<http.Response> getCourses() async {
    return await http.get(_api(url: '/courses'), headers: _headers);
  }

  static Future<http.Response> getCourse(int id) async {
    return await http.get(_api(url: '/course/$id'), headers: _headers);
  }

  static Future<http.Response> getLesson(int id) async {
    return await http.get(_api(url: '/lesson/$id'), headers: _headers);
  }
}
