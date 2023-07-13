import 'package:flutter/material.dart';
import 'package:flutterclassjuly/api_app/breaking_bad_app/model/character.dart';
import 'package:flutterclassjuly/api_app/breaking_bad_app/ui/components/item_full.dart';
import 'package:transition/transition.dart';

class BrakingBadItem extends StatefulWidget {
  Character character;
  BrakingBadItem({super.key, required this.character});

  @override
  State<BrakingBadItem> createState() => _BrakingBadItemState();
}

class _BrakingBadItemState extends State<BrakingBadItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(widget.character.img),
        ),
        title: Text(
          widget.character.name,
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          widget.character.nickName,
          style: TextStyle(fontSize: 18),
        ),
        trailing: Text(
          widget.character.status,
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          Navigator.push(
              context,
              Transition(
                  child: ItemFull(
                    character: widget.character,
                  ),
                  transitionEffect: TransitionEffect.RIGHT_TO_LEFT));
        },
      ),
    );
  }
}
