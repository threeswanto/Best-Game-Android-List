import 'package:flutter/material.dart';

import 'model/game.dart';

class DetailGame extends StatefulWidget {
  final Game game;

  DetailGame({Key key, this.game}) : super(key: key);

  @override
  _DetailGameState createState() => _DetailGameState();
}

class _DetailGameState extends State<DetailGame> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text('Detail ' + widget.game.gameName),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      child: Image(
                        image: AssetImage(widget.game.gameImage),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.game.gameName,
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Developer: " + widget.game.gameDeveloper,
                          style: TextStyle(
                              fontSize: 18.0, fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.game.gameDescription,
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.game.gameDescription,
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.pink : Colors.white,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
