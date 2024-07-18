import '/common/index.dart';

/// 用户 api
class UserApi {
  /// 注册
  static Future<bool> register(UserRegisterReq? req) async {
    var res = await NetworkHttpService.to.post(
      '/user/register',
      data: req,
    );

    if (res.statusCode == 200) {
      return true;
    }
    return false;
  }

  /// 登录
  static Future<UserLoginRes> login(UserLoginReq? req) async {
    var res = await NetworkHttpService.to.post(
      '/user/login',
      data: req,
    );

    return UserLoginRes.fromJson(res.data);
  }

  /// 用户资料
  static Future<UserProfileRes> profile() async {
    var res = await NetworkHttpService.to.get(
      '/user/profile',
    );
    return UserProfileRes.fromJson(res.data);
  }
}
