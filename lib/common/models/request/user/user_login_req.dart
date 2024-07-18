/// username : ""
/// password : ""

class UserLoginReq {
  UserLoginReq({
    required String username,
    required String password,
  }) {
    _username = username;
    _password = password;
  }

  UserLoginReq.fromJson(dynamic json) {
    _username = json['username'];
    _password = json['password'];
  }
  String _username = "";
  String _password = "";
  UserLoginReq copyWith({
    required String username,
    required String password,
  }) =>
      UserLoginReq(
        username: username ?? _username,
        password: password ?? _password,
      );
  String get username => _username;
  String get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['password'] = _password;
    return map;
  }
}
