/// email : ""
/// code : 0

class PinVerifyReq {
  PinVerifyReq({
    required String email,
    required num code,
  }) {
    _email = email;
    _code = code;
  }

  PinVerifyReq.fromJson(dynamic json) {
    _email = json['email'];
    _code = json['code'];
  }
  String _email = "";
  num _code = 0;
  PinVerifyReq copyWith({
    required String email,
    required num code,
  }) =>
      PinVerifyReq(
        email: email ?? _email,
        code: code ?? _code,
      );
  String get email => _email;
  num get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    map['code'] = _code;
    return map;
  }
}
