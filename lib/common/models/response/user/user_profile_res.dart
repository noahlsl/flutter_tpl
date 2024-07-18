/// username : ""
/// password : ""
/// email : ""

class UserProfileRes {
  UserProfileRes({
    required String username,
    required String email,
  }) {
    _username = username;
    _email = email;
  }

  UserProfileRes.fromJson(dynamic json) {
    _username = json['username'];
    _email = json['email'];
  }
  String _username = "";
  String _email = "";
  UserProfileRes copyWith({
    required String username,
    required String password,
    required String email,
  }) =>
      UserProfileRes(
        username: username ?? _username,
        email: email ?? _email,
      );
  String get username => _username;
  String get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['email'] = _email;
    return map;
  }
}
