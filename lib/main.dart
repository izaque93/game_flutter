import 'package:flame/game.dart';
import 'package:flame_game/overlays/game_over.dart';
import 'package:flame_game/overlays/main_menu.dart';
import 'package:flutter/material.dart';

import 'ember_quest.dart';

void main() {
  runApp(
    GameWidget<EmberQuestGame>.controlled(
      gameFactory: EmberQuestGame.new,
      overlayBuilderMap: {
        'MainMenu': (_, game) => MainMenu(game: game),
        'GameOver': (_, game) => GameOver(game: game),
      },
      initialActiveOverlays: const ['MainMenu'],
    ),
  );
}