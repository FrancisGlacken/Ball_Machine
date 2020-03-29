import 'package:box2d_flame/box2d.dart';
import 'package:flame/box2d/box2d_component.dart';
import 'package:flutter/widgets.dart';

class WallBody extends BodyComponent {
  double x;
  double y;
  double width;
  double height; 

  bool first = true;

  WallBody(
      Box2DComponent box, this.x, this.y, this.width, this.height)
      : super(box) {
    _createBody();
  }

  void _createBody() {

    final shape = PolygonShape();
    shape.setAsBoxXY(width, height);
    final fixtureDef = FixtureDef();
    fixtureDef.shape = shape;

    fixtureDef.restitution = 0.0;
    fixtureDef.friction = 0.2;
    final bodyDef = BodyDef();
    bodyDef.position = Vector2(x, y);
    Body groundBody = world.createBody(bodyDef);
    groundBody.createFixtureFromFixtureDef(fixtureDef);
    this.body = groundBody;
  }
}
