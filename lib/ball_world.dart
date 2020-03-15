import 'dart:math';

import 'package:ball_machine/ball_machine_game.dart';
import 'package:ball_machine/demo_room.dart';
import 'package:flame/box2d/box2d_component.dart';
import 'package:ball_machine/components/ball2d.dart';
import 'package:flame/components/mixins/has_game_ref.dart';

class BallWorld extends Box2DComponent with HasGameRef<BallMachineGame> {
  Ball2D ball2d;
  BallWorld() : super(scale: 1.5, velocityIterations: 6, positionIterations: 2);

  void initializeWorld() {
    addAll(DemoRoom(this).bodies); 
  }

  void spawnBall() {
    add(Ball2D(this, 0, 0));
  }

  @override
  void update(t) {
    super.update(t); 
  }
}