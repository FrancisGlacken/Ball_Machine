import 'dart:math';
import 'dart:ui';

import 'package:box2d_flame/box2d.dart';
import 'package:flame/box2d/box2d_component.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flame/flame.dart';
import 'package:ball_machine/utils.dart';

class Ball2D extends BodyComponent {
  static const num BALL_RADIUS = 8.0; 
  Random rng = new Random(); 
  Random rngCharge = new Random(); 
  double posX, posY, chargeX = 1, chargeY = 1;  
  var random;

  ImagesLoader images = new ImagesLoader(); 

  Ball2D(box2d, double x, double y) : super(box2d) {
    posX = x; 
    posY = y; 
    _loadImages();
    _createBody();
    random = rng.nextInt(4); 
  }

  void _loadImages() {
      images.load("red_ball", "red_ball.png");
      images.load("blue_ball", "blue_ball.png");
      images.load("green_ball", "green_ball.png");
      images.load("orange_ball", "orange_ball.png");
  }

  void renderCircle(Canvas c, Offset center, double radius) {
    var _image;
    
    switch (random) {
      case 0:
        _image = images.get("red_ball");
        break;
      case 1:
        _image = images.get("blue_ball");
        break;
      case 2: 
        _image = images.get("green_ball");
        break;
      case 3:
        _image = images.get("orange_ball");
        break; 
      default: _image = images.get("red_ball");
    }

    
    paintImage(
        canvas: c,
        image: _image,
        rect: new Rect.fromCircle(center: center, radius: radius),
        fit: BoxFit.contain);
  }

  _createBody() {
    //Create Body
    final activeBodyDef = new BodyDef();

    if (rng.nextBool()) chargeX = chargeX * -1;
    if (rng.nextBool()) chargeY = chargeY * -1;
    activeBodyDef.linearVelocity = new Vector2(rng.nextDouble() * 200 * chargeX, rng.nextDouble() * 200 * chargeY);
    activeBodyDef.position = new Vector2(posX, posY);
    activeBodyDef.type = BodyType.DYNAMIC;
    activeBodyDef.bullet = true;
    BodyDef bodyDef = activeBodyDef; 

    //Create SHape
    final shape = new CircleShape(); 
    shape.radius = Ball2D.BALL_RADIUS;
    shape.p.x = 0.0; 

    // Create Fixture which is the thing that holds the physics
    final activeFixtureDef = new FixtureDef();
    activeFixtureDef.shape = shape; 
    activeFixtureDef.restitution = 0.7;
    activeFixtureDef.density = 0.05;
    activeFixtureDef.friction = 0.2;
    FixtureDef fixtureDef = activeFixtureDef;
    

    this.body = world.createBody(bodyDef)..createFixtureFromFixtureDef(fixtureDef);
  }

  

  // void impulse(Offset velocity) {
  //   Vector2 force = new Vector2(velocity.dx, -velocity.dy)..scale(100.0);
  //   body.applyLinearImpulse(force, center, true);
  // }

  // void input(Offset position) {
  //   Vector2 force = position.dx < 250 ? new Vector2(-1.0, 0.0) : new Vector2(1.0, 0.0);
  //   body.applyForce(force..scale(10000.0), center); 
  // }
}