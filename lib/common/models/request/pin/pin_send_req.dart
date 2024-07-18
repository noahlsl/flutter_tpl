/// email : "123"

class PinSendReq {
  PinSendReq({
    required String email,
  }) {
    _email = email;
  }

  PinSendReq.fromJson(dynamic json) {
    _email = json['email'];
  }
  String _email = "";
  PinSendReq copyWith({
    required String email,
  }) =>
      PinSendReq(
        email: email ?? _email,
      );
  String get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    return map;
  }
}
