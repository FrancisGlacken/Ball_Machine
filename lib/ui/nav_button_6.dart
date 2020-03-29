import 'package:ball_machine/game_ui.dart';
import 'package:flutter/material.dart';

class NavigationButton6 extends StatelessWidget {
  final GameUIState state;
  NavigationButton6(this.state);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          state.navToRoom(6);
        },
        child: Image.asset('assets/images/quit_game.png'),
    );
  }
}
