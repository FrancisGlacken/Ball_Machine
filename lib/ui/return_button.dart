import 'package:ball_machine/game_ui.dart';
import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  final GameUIState state;
  ReturnButton(this.state);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      bottom: 10,
      child: FlatButton(
        onPressed: () {
          state.toNavigationScreen();
        },
        child: Image.asset('assets/images/quit_game.png'),
      ),
    );
  }
}
