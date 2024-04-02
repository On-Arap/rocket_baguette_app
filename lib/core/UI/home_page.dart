import 'package:flutter/material.dart';
import 'package:rocket_baguette_app/core/classes/destinations.dart';
import 'package:rocket_baguette_app/core/widgets/twitch_player.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.destination});

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ROCKET BAGUETTE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Column(
        children: [Text("TWITCH PLAYER"), TwitchPlayer()],
      ),
    );
  }
}
