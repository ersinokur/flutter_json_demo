/*
https://javiercbk.github.io/json_to_dart/ sitesini kullanabilirsin
*/

class Todo {
  int _id;
  int _userId;
  String _title;
  bool _completed;

  Todo(int id, int userId, bool completed, String title) {
    this._userId = userId;
    this._id = id;
    this._title = title;
    this._completed = completed;
  }

  int get userId => _userId;
  set userId(int userId) => _userId = userId;
  int get id => _id;
  set id(int id) => _id = id;
  String get title => _title;
  set title(String title) => _title = title;
  bool get completed => _completed;
  set completed(bool completed) => _completed = completed;

  Todo.fromJson(Map<String, dynamic> json) {
    _userId = json['userId'];
    _id = json['id'];
    _title = json['title'];
    _completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._userId;
    data['id'] = this._id;
    data['title'] = this._title;
    data['completed'] = this._completed;
    return data;
  }
}
