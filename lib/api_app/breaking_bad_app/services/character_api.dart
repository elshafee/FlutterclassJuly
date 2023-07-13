import 'package:dio/dio.dart';
import 'package:flutterclassjuly/api_app/breaking_bad_app/model/character.dart';

class CharacterApi {
  static Future<List> getCharacters() async {
    Response response = await Dio()
        .get("https://63c4417ba908563575346178.mockapi.io/api/v1/characters");
    List data = response.data.map((i) => Character.fromJson(i)).toList();

    return data;
  }
}
