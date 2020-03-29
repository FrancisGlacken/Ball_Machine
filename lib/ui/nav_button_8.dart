import 'package:ball_machine/game_ui.dart';
import 'package:flutter/material.dart';

class NavigationButton8 extends StatelessWidget {
  final GameUIState state;
  NavigationButton8(this.state);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          state.navToRoom(8);
        },
        child: Image.asset('assets/images/quit_game.png'),
    );
  }
}
