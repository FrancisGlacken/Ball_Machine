import 'package:ball_machine/game_ui.dart';
import 'package:flutter/material.dart';

class SpawnButton extends StatelessWidget {
  final GameUIState state;
  SpawnButton(this.state);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 25,
      top: 25,
      child: FlatButton(
        onPressed: () {
          state.spawnBall();
        },
        child: Image.asset('assets/images/button.png'),
      ),
    );
  }
}
