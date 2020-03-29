import 'package:ball_machine/game_ui.dart';
import 'package:flutter/material.dart';

class NavigationButton2 extends StatelessWidget {
  final GameUIState state;
  NavigationButton2(this.state);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          state.navToRoom(2);
        },
        child: Image.asset('assets/images/quit_game.png'),
      );
  }
}
