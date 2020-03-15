import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'ball_machine_game.dart';
import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'game_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);
  final size = await Flame.util.initialDimensions();

  Flame.audio.disableLog();
  // await Flame.audio.loadAll(<String>[
  //   'bgm/bgm.mp3'
  // ]);

  GameUI gameUI = GameUI();
  BallMachineGame game = BallMachineGame(size, gameUI.state);
  gameUI.state.game = game;
  runApp(MaterialApp(
      title: 'Ball Machine',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'HVD',
      ),
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Stack(fit: StackFit.expand, children: <Widget>[
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTapDown: game.onTapDown,
                child: game.widget,
              ),
            ),
            Positioned.fill(child: gameUI)
          ])),
      debugShowCheckedModeBanner: false));
}
