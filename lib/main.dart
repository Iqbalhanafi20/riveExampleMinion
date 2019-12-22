import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:minion/minionController.dart';

void main() => runApp(MaterialApp(
      home: Minion(),
      debugShowCheckedModeBanner: false,
    ));

class Minion extends StatefulWidget {
  @override
  _MinionState createState() => _MinionState();
}

class _MinionState extends State<Minion> {
  MinionController minionController;

  @override
  void initState() {
    super.initState();
    minionController = MinionController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 300,
              child: FlareActor(
                "./assets/flare/minion.flr",
                controller: minionController,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    minionController.dance();
                  },
                  child: Text("Dance"),
                ),
                InkWell(
                  onTap: () {
                    minionController.jump();
                  },
                  child: Text("Jump"),
                ),
                InkWell(
                  onTap: () {
                    minionController.wave();
                  },
                  child: Text("Wave"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
