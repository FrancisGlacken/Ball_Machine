import 'package:flame/box2d/box2d_component.dart';
import 'package:flutter/widgets.dart';
import 'border_body.dart';
import 'wall_body.dart';

// Basic room for borders (This is never removed)
class BasicRoom {
  List<BodyComponent> _bodies = List();

  BasicRoom(Box2DComponent box) {
    _bodies.add(BorderBody(box, 1.0, 0.01, Alignment.bottomCenter));
    _bodies.add(BorderBody(box, 1.0, 0.01, Alignment.topCenter));
    _bodies.add(BorderBody(box, 0.01, 1.0, Alignment.centerRight));
    _bodies.add(BorderBody(box, 0.01, 1.0, Alignment.centerLeft));
  }

  List<BodyComponent> get bodies => _bodies;
}

// Room 1
class Room1 {
  List<BodyComponent> _bodies = List();

  Room1(Box2DComponent box) {
    _bodies.add(WallBody(box, 50, 0, 2, 100));
    _bodies.add(WallBody(box, -50, 0, 2, 100));
  }

  List<BodyComponent> get bodies => _bodies;
}

// Room 2
class Room2 {
  List<BodyComponent> _bodies = List();

  Room2(Box2DComponent box) {
    _bodies.add(WallBody(box, 50, 0, 2, 100));
    _bodies.add(WallBody(box, -50, 0, 2, 100));
    _bodies.add(WallBody(box, 0, -99, 50, 2));
  }

  List<BodyComponent> get bodies => _bodies;
}

// Room 3
class Room3 {
  List<BodyComponent> _bodies = List();

  Room3(Box2DComponent box) {
    _bodies.add(WallBody(box, 50, 0, 2, 100));
    _bodies.add(WallBody(box, -50, 0, 2, 100));
  }

  List<BodyComponent> get bodies => _bodies;
}

// Room 4
class Room4 {
  List<BodyComponent> _bodies = List();

  Room4(Box2DComponent box) {
    _bodies.add(WallBody(box, 50, 0, 2, 100));
    _bodies.add(WallBody(box, -50, 0, 2, 100));
  }

  List<BodyComponent> get bodies => _bodies;
}

// Room 5
class Room5 {
  List<BodyComponent> _bodies = List();

  Room5(Box2DComponent box) {
    _bodies.add(WallBody(box, 50, 0, 2, 100));
    _bodies.add(WallBody(box, -50, 0, 2, 100));
  }

  List<BodyComponent> get bodies => _bodies;
}

// Room 6
class Room6 {
  List<BodyComponent> _bodies = List();

  Room6(Box2DComponent box) {
   _bodies.add(WallBody(box, 50, 0, 2, 100));
    _bodies.add(WallBody(box, -50, 0, 2, 100));
  }

  List<BodyComponent> get bodies => _bodies;
}

// Room 7
class Room7 {
  List<BodyComponent> _bodies = List();

  Room7(Box2DComponent box) {
    _bodies.add(WallBody(box, 50, 0, 2, 100));
    _bodies.add(WallBody(box, -50, 0, 2, 100));
  }

  List<BodyComponent> get bodies => _bodies;
}

// Room 8
class Room8 {
  List<BodyComponent> _bodies = List();

  Room8(Box2DComponent box) {
    _bodies.add(WallBody(box, 50, 0, 2, 100));
    _bodies.add(WallBody(box, -50, 0, 2, 100));
  }

  List<BodyComponent> get bodies => _bodies;
}
