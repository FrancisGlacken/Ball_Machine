import 'package:ball_machine/ball_machine_game.dart';
import 'package:flame/components/animation_component.dart';
import 'package:flame/components/mixins/has_game_ref.dart';
import 'package:flame/animation.dart';

import 'package:box2d_flame/box2d.dart';
import 'package:flame/box2d/box2d_component.dart';

//THis class needs to become a BodyComponent

class Ball extends AnimationComponent with HasGameRef<BallMachineGame> {

  Ball(double x, double y) : super(64, 64,
      Animation.sequenced('red_ball.png', 1, textureHeight: 64, textureWidth: 64)) {
        this.x = x;
        this.y = y; 
  } 

  @override
  void update(double t) {
    super.update(t);

    y += 70 * t;
  }

  
}