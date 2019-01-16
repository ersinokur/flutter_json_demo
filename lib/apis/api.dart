/*  kullanim ornegi - using example:
https://pub.dartlang.org/packages/http 
*/

import 'package:http/http.dart' as http;

class Api {
  static Future getTodos() {
    var url = "https://jsonplaceholder.typicode.com/todos";
    return http.get(url);
  }
}
