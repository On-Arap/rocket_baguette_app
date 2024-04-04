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
        ClipTile(),
      ],
    );
  }
}
