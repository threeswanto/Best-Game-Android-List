import 'package:flutter/material.dart';

import 'model/game.dart';

class DetailGame extends StatelessWidget {
  final Game game;

  DetailGame({Key key, this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text('Detail ' + game.gameName),
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
                      child: new Image(
                        image: AssetImage(game.gameImage),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(game.gameName,
                          style: new TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Developer: " + game.gameDeveloper,
                          style: new TextStyle(
                              fontSize: 18.0, fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(game.gameDescription,
                          style: new TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
