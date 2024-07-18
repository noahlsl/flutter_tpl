/// username : ""
/// password : ""
/// email : ""

class UserRegisterReq {
  UserRegisterReq({
    required String username,
    required String password,
    required String email,
  }) {
    _username = username;
    _password = password;
    _email = email;
  }

  UserRegisterReq.fromJson(dynamic json) {
    _username = json['username'];
    _password = json['password'];
    _email = json['email'];
  }
  String _username = "";
  String _password = "";
  String _email = "";
  UserRegisterReq copyWith({
    required String username,
    required String password,
    required String email,
  }) =>
      UserRegisterReq(
        username: username ?? _username,
        password: password ?? _password,
        email: email ?? _email,
      );
  String get username => _username;
  String get password => _password;
  String get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['password'] = _password;
    map['email'] = _email;
    return map;
  }
}
