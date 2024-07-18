/// status : 400
/// msg : ""
/// date : ""

class ErrorMessage {
  ErrorMessage({
    required num status,
    required String msg,
    dynamic date,
  }) {
    _status = status;
    _msg = msg;
    _date = date;
  }

  ErrorMessage.fromJson(dynamic json) {
    _status = json['status'];
    _msg = json['msg'];
    _date = json['date'];
  }

  num _status = 0;
  String _msg = "";
  dynamic _date;

  ErrorMessage copyWith({
    required num status,
    required String msg,
    dynamic date,
  }) =>
      ErrorMessage(
        status: status ?? _status,
        msg: msg ?? _msg,
        date: date ?? _date,
      );

  num get status => _status;

  String get msg => _msg;

  dynamic get date => _date;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['msg'] = _msg;
    map['date'] = _date;
    return map;
  }
}
