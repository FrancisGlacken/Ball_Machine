import 'dart:math';

import 'package:ball_machine/ball_machine_game.dart';
import 'package:flutter/material.dart';
import 'ui/spawn_button.dart';
import 'ui_screens.dart';
import 'package:ball_machine/ui/nav_button_1.dart';
import 'package:ball_machine/ui/nav_button_2.dart';
import 'package:ball_machine/ui/nav_button_3.dart';
import 'package:ball_machine/ui/nav_button_4.dart';
import 'package:ball_machine/ui/nav_button_5.dart';
import 'package:ball_machine/ui/nav_button_6.dart';
import 'package:ball_machine/ui/nav_button_7.dart';
import 'package:ball_machine/ui/nav_button_8.dart';
import 'package:ball_machine/ui/return_button.dart';

class GameUI extends StatefulWidget {
  final GameUIState state = GameUIState();
  State<StatefulWidget> createState() => state;
}

class GameUIState extends State<GameUI> with WidgetsBindingObserver {
  BallMachineGame game;
  UIScreen currentScreen = UIScreen.title;
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
          children: <Widget>[roomScreen(), gameScreen()],
          index: currentScreen.index,
        )),
      ],
    );
  }

  Widget roomScreen() {
    return Positioned.fill(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NavigationButton1(this),
                  NavigationButton2(this)
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NavigationButton3(this),
                  NavigationButton4(this)
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NavigationButton5(this),
                  NavigationButton6(this)
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NavigationButton7(this),
                  NavigationButton8(this)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget gameScreen() {
    return Positioned.fill(
        child: Stack(children: <Widget>[
      SpawnButton(this),
      ReturnButton(this),
    ]));
  }

  void spawnBall() {
    setState(() {
      game.world.spawnBall();
    });
  }

  void toNavigationScreen() {
    setState(() {
      game.world.removeBalls();
      game.world.removeRoom();
      currentScreen = UIScreen.title;
    });
  }

  void navToRoom(int id) {
    setState(() {
      switch (id) {
        case 1:
          game.world.spawnRoom(id);
          break;
        case 2:
          game.world.spawnRoom(id);
          break;
        case 3:
          game.world.spawnRoom(id);
          break;
        case 4:
          game.world.spawnRoom(id);
          break;
        case 5:
          game.world.spawnRoom(id);
          break;
        case 6:
          game.world.spawnRoom(id);
          break;
        case 7:
          game.world.spawnRoom(id);
          break;
        case 8:
          game.world.spawnRoom(id);
          break;
        default:
          game.world.spawnRoom(id);
      }
      currentScreen = UIScreen.game;
    });
  }
}
