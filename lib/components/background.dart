import 'dart:ui';
import 'package:flame/components/parallax_component.dart';
import 'package:flame/components/mixins/has_game_ref.dart';
import 'package:flame/sprite.dart';
import 'package:ball_machine/ball_machine_game.dart';

class Background extends ParallaxComponent with HasGameRef<BallMachineGame>{

  static List<ParallaxImage> images = [
    ParallaxImage('background.png'),
    // ParallaxImage('bg_ocean.png')
  ];

  Background() : super(images, baseSpeed: const Offset(0, 0), layerDelta: const Offset(0, 0));

  
}
