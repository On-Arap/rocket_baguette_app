import 'package:flutter/material.dart';
import 'package:rocket_baguette_app/core/classes/destinations.dart';
import 'package:rocket_baguette_app/core/widgets/clip_tile.dart';
import 'package:rocket_baguette_app/core/classes/clip.dart';

List<Clip> data = [
  Clip(
    index: 1,
    imgClip: "assets/atow_goal.jpg",
    player: "🇧🇪 Atow",
    description: "Pinch en Overtime",
    team1: 'kc',
    team2: 'fc',
  ),
  Clip(
    index: 2,
    imgClip: "assets/juicy_goal.jpg",
    player: "🇫🇷 Juicy",
    description: "Juicy avec la plus grande passe des RLCS",
    team1: 'm8',
    team2: 'kc',
  ),
  Clip(
    index: 3,
    imgClip: "assets/rise_goal.jpg",
    player: "🇬🇧 Rise",
    description: "Rise double tap de fou malade",
    team1: 'kc',
    team2: 'fc',
  )
];

class ClipsPage extends StatefulWidget {
  int clipselected = 0;

  ClipsPage({super.key, required this.destination});

  final Destination destination;

  @override
  State<ClipsPage> createState() => _ClipsPageState();
}

class _ClipsPageState extends State<ClipsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: data
          .map((e) => InkWell(
                onTap: () {
                  setState(() {
                    widget.clipselected = e.index;
                  });
                },
                child: ClipTile(
                  imgClip: e.imgClip,
                  player: e.player,
                  description: e.description,
                  team1: e.team1,
                  team2: e.team2,
                  shown: widget.clipselected == e.index,
                ),
              ))
          .toList(),
    );
  }
}
