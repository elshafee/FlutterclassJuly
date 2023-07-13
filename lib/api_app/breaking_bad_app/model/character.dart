class Character {
  String name;
  String nickName;
  String status;
  String img;

  Character.fromJson(Map json)
      : name = json['name'],
        nickName = json['nickname'],
        status = json['status'],
        img = json['img'];

  Map toJson() {
    return {
      'name': name,
      'nickname': nickName,
      'status': status,
      'img': img,
    };
  }
}
