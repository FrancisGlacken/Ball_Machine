import 'dart:math';

import 'package:ball_machine/ball_machine_game.dart';
import 'package:flutter/material.dart';
import 'ui/spawn_button.dart';
import 'components/ball.dart';
import 'package:ball_machine/components/ball2d.dart';

class GameUI extends StatefulWidget {
  final GameUIState state = GameUIState();
  State<StatefulWidget> createState() => state;
}

class GameUIState extends State<GameUI> with WidgetsBindingObserver {
  BallMachineGame game;
  Random rng = new Random(); 


  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this); 
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose(); 
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: IndexedStack(
          sizing: StackFit.expand,
          children: <Widget>[gameScreen()],
        )),
      ],
    );
  }

  Widget gameScreen() {
    return Positioned.fill(child: Stack(children: <Widget>[
      SpawnButton(this), 
    ]));
  }

  void spawnBall() {
    setState(() {
      game.world.spawnBall(); 
    });
  }

}