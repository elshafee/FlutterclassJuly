import 'package:flutter/material.dart';
import 'package:transition/transition.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  List<String> images = [
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2QhXpIXDpnzWdxHrc31yCRyegBdnppxbu4VaP54Vm6A&s",
    "https://pbs.twimg.com/media/D2iE-7mU0AAJqxj.jpg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8?format=jpg&name=4096x4096",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2QhXpIXDpnzWdxHrc31yCRyegBdnppxbu4VaP54Vm6A&s",
    "https://pbs.twimg.com/media/D2iE-7mU0AAJqxj.jpg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8?format=jpg&name=4096x4096",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2QhXpIXDpnzWdxHrc31yCRyegBdnppxbu4VaP54Vm6A&s",
    "https://pbs.twimg.com/media/D2iE-7mU0AAJqxj.jpg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8?format=jpg&name=4096x4096",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2QhXpIXDpnzWdxHrc31yCRyegBdnppxbu4VaP54Vm6A&s",
    "https://pbs.twimg.com/media/D2iE-7mU0AAJqxj.jpg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8?format=jpg&name=4096x4096",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2QhXpIXDpnzWdxHrc31yCRyegBdnppxbu4VaP54Vm6A&s",
    "https://pbs.twimg.com/media/D2iE-7mU0AAJqxj.jpg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8?format=jpg&name=4096x4096",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2QhXpIXDpnzWdxHrc31yCRyegBdnppxbu4VaP54Vm6A&s",
    "https://pbs.twimg.com/media/D2iE-7mU0AAJqxj.jpg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8?format=jpg&name=4096x4096",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2QhXpIXDpnzWdxHrc31yCRyegBdnppxbu4VaP54Vm6A&s",
    "https://pbs.twimg.com/media/D2iE-7mU0AAJqxj.jpg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8?format=jpg&name=4096x4096",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  print(images[index]);
                  Navigator.push(
                      context,
                      Transition(
                          child: ImageFull(
                            title: images[index],
                            ind: index,
                          ),
                          transitionEffect: TransitionEffect.FADE));
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepPurple[100]),
                    child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Image.network(images[index])),
                  ),
                ),
              );
            }));
  }
}

class ImageFull extends StatefulWidget {
  String title;
  int ind;
  ImageFull({super.key, required this.title, required this.ind});

  @override
  State<ImageFull> createState() => _ImageFullState();
}

class _ImageFullState extends State<ImageFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.ind}"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),
      body: Center(
        child: Image.network(widget.title),
      ),
    );
  }
}
