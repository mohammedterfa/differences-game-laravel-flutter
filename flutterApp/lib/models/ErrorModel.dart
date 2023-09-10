class ErrorModel {
  ErrorModel({
    required this.status,
    required this.code,
    required this.msg,
    required this.data,
  });
  late final bool status;
  late final int code;
  late final String msg;
  late final String data;

  ErrorModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    msg = json['msg'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['code'] = code;
    _data['msg'] = msg;
    _data['data'] = data;
    return _data;
  }
}
