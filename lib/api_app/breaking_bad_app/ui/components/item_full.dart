import 'package:flutter/material.dart';
import 'package:flutterclassjuly/api_app/breaking_bad_app/model/character.dart';

class ItemFull extends StatefulWidget {
  Character character;
  ItemFull({
    super.key,
    required this.character,
  });

  @override
  State<ItemFull> createState() => _ItemFullState();
}

class _ItemFullState extends State<ItemFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.character.name),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                widget.character.img,
              ),
            ),
            Text(
              widget.character.name,
              style: TextStyle(fontSize: 24),
            ),
            Text(
              widget.character.nickName,
              style: TextStyle(fontSize: 24),
            ),
            Text(
              widget.character.status,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
