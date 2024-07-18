import '/common/index.dart';

/// 用户 api
class PinApi {
  /// 发送验证码
  static Future<bool> pinSend(PinSendReq? req) async {
    var res = await NetworkHttpService.to.post(
      '/pin/send',
      data: req,
    );

    if (res.statusCode == 200) {
      return true;
    }
    return false;
  }

  /// 校验验证码
  static Future<bool> pinVerify(PinVerifyReq? req) async {
    var res = await NetworkHttpService.to.post(
      '/pin/verify',
      data: req,
    );

    if (res.statusCode == 200) {
      return true;
    }
    return false;
  }
}
