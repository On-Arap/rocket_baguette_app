import 'package:flutter/material.dart';
import 'package:rocket_baguette_app/core/classes/destinations.dart';
import 'package:rocket_baguette_app/core/widgets/twitch_player.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.destination});

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text("TWITCH PLAYER"),
          TwitchPlayer(),
        ],
      ),
    );
  }
}
