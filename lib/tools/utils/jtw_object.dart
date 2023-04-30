class JwtObject {
  String? token;
  String? type;

  JwtObject({this.token, this.type});

  JwtObject.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['token'] = token;
    data['type'] = type;
    return data;
  }

  @override
  String toString() => (token == null || token!.isEmpty) ? "" : "$type $token";
}
