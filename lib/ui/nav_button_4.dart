import 'package:ball_machine/game_ui.dart';
import 'package:flutter/material.dart';

class NavigationButton4 extends StatelessWidget {
  final GameUIState state;
  NavigationButton4(this.state);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          state.navToRoom(4);
        },
        child: Image.asset('assets/images/quit_game.png'),
    );
  }
}
