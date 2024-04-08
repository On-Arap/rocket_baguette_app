import 'package:flutter/material.dart';
import 'package:rocket_baguette_app/core/classes/destinations.dart';
import 'package:rocket_baguette_app/core/widgets/clip_tile.dart';

class ClipsPage extends StatelessWidget {
  const ClipsPage({super.key, required this.destination});

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ClipTile(
          imgClip: "assets/atow_goal.jpg",
          player: "🇧🇪 Atow",
          description: "Pinch en Overtime",
          team1: 'kc',
          team2: 'fc',
        ),
        ClipTile(
          imgClip: "assets/juicy_goal.jpg",
          player: "🇫🇷 Juicy",
          description: "Juicy avec la plus grande passe des RLCS",
          team1: 'm8',
          team2: 'kc',
        ),
        ClipTile(
          imgClip: "assets/rise_goal.jpg",
          player: "🇬🇧 Rise",
          description: "Rise double tap de fou malade",
          team1: 'kc',
          team2: 'fc',
        ),
      ],
    );
  }
}
