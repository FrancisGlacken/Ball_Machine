import 'dart:ui';
import 'package:ball_machine/ball_world.dart';
import 'package:ball_machine/game_ui.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/material.dart';
import 'components/background.dart';
import 'components/ball.dart';


class BallMachineGame extends BaseGame with TapDetector {
  final GameUIState uiState; 
  Background bg; 
  Ball ball; 
  final BallWorld world = BallWorld(); 

  BallMachineGame(Size size, this.uiState) {
    this.size = size; 
    initialize(); 
  }

  void initialize() async {
    add (bg = Background()); 
    world.initializeWorld(); 
  }

  @override
  void render(Canvas c) {
    super.render(c);
    world.render(c); 
  }

  @override
  void update(double t) {
    super.update(t); 
    world.update(t);
  }

  @override
  void resize(Size size) {
    world.resize(size);
  }

  void onTapDown(TapDownDetails d) {

  }
  
}