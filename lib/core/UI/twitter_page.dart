import 'package:flutter/material.dart';
import 'package:rocket_baguette_app/core/classes/destinations.dart';

class TwitterPage extends StatelessWidget {
  const TwitterPage({super.key, required this.destination});

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("TWITTER"),
    );
  }
}
