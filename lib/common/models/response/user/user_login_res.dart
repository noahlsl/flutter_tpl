// 用户令牌
class UserLoginRes {
  String? token;

  UserLoginRes({
    this.token,
  });

  factory UserLoginRes.fromJson(Map<String, dynamic> json) {
    return UserLoginRes(
      token: json['token'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'token': token,
      };
}
