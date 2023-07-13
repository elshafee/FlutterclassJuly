import 'package:flutter/material.dart';
import 'package:flutterclassjuly/api_app/breaking_bad_app/services/character_api.dart';
import 'package:flutterclassjuly/api_app/breaking_bad_app/ui/components/breaking_bad_item.dart';
import 'package:flutterclassjuly/utils/drawe.dart';

class BreakingBadApp extends StatefulWidget {
  const BreakingBadApp({super.key});

  @override
  State<BreakingBadApp> createState() => _BreakingBadAppState();
}

class _BreakingBadAppState extends State<BreakingBadApp> {
  List characterList = [];

  void getAllCharacters() async {
    CharacterApi.getCharacters().then((response) {
      setState(() {
        characterList = response;
      });
      print(response);
    });
  }

  @override
  void initState() {
    super.initState();
    getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breaking Bad API APP"),
        backgroundColor: Colors.deepPurple[100],
        elevation: 5,
      ),
      drawer: const Drawe(),
      body: ListView.builder(
        itemCount: characterList.length,
        itemBuilder: (context, index) {
          return BrakingBadItem(
            character: characterList[index],
          );
        },
      ),
    );
  }
}
