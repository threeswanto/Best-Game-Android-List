import 'package:flutter/material.dart';
import 'package:flutter_beginner_dicoding/data/gamedata.dart';
import 'package:flutter_beginner_dicoding/detailgame.dart';
import 'package:flutter_beginner_dicoding/model/game.dart';

class GamePage extends StatefulWidget {
  GamePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List games;

  @override
  void initState() {
    games = DataGame().getGame();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    InkWell makeCard(Game game) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailGame(
                  game: game,
                ),
              ),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                      image: AssetImage(game.gameImage), fit: BoxFit.fill),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        game.gameName,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          game.gameDeveloper,
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );

    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black45,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: games.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(games[index]);
        },
      ),
    );
  }
}
