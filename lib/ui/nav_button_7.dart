import 'package:ball_machine/game_ui.dart';
import 'package:flutter/material.dart';

class NavigationButton7 extends StatelessWidget {
  final GameUIState state;
  NavigationButton7(this.state);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          state.navToRoom(7);
        },
        child: Image.asset('assets/images/quit_game.png'),
    );
  }
}
