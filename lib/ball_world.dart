import 'dart:math';

import 'package:ball_machine/ball_machine_game.dart';
import 'package:ball_machine/components/room_library.dart'; 
import 'package:flame/box2d/box2d_component.dart';
import 'package:ball_machine/components/ball2d.dart';
import 'package:flame/components/mixins/has_game_ref.dart';
import 'package:flutter/material.dart';

class BallWorld extends Box2DComponent with HasGameRef<BallMachineGame> {
  List<Ball2D> balls; 
  List<BodyComponent> walls; 
  List<BodyComponent> borders; 
  BallWorld() : super(scale: 1.5, velocityIterations: 6, positionIterations: 2) {
    balls = new List<Ball2D>(); 
    borders = new BasicRoom(this).bodies;
  }

  // Create World
  void initializeWorld() {
    addAll(borders); 
  }

  // Spawn ball add ball to list
  void spawnBall() {
    balls.add(Ball2D(this, 0, 0));
    add(balls[balls.length -1]); 
  }

  // Remove all balls and clear list
  void removeBalls() {
    balls.forEach((element) {
      remove(element); 
    });
    balls.clear(); 
  }

  void spawnRoom(int id) {
    switch (id) {
      case 1: walls = new Room1(this).bodies;     
        break;
      case 2: walls = new Room2(this).bodies;     
        break;
      case 3: walls = new Room3(this).bodies;     
        break;
      case 4: walls = new Room4(this).bodies;     
        break;
      case 5: walls = new Room5(this).bodies;     
        break;
      case 6: walls = new Room6(this).bodies;     
        break;
      case 7: walls = new Room7(this).bodies;     
        break;
      case 8: walls = new Room8(this).bodies;     
        break;
      default: walls = new Room1(this).bodies;   
    } 
    addAll(walls); 
  }

  // remove all walls
  void removeRoom() {
    walls.forEach((element) {
     remove(element); 
    });
  }


  @override
  void update(t) {
    super.update(t); 
  }

  void handleTap(Offset position) {
    balls.forEach((Ball2D ball) {
      ball.stop(); 
    });
  }

  void handleDragUpdate(DragUpdateDetails deets) {
    balls.forEach((Ball2D ball) {
      ball.handleDragUpdate(deets); 
    });
  }

  void handleDragEnd(DragEndDetails deets) {
    balls.forEach((Ball2D ball) {
      ball.handleDragEnd(deets); 
    });
  }
}