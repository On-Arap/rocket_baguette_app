import 'package:flutter/material.dart';
import 'package:rocket_baguette_app/core/classes/destinations.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key, required this.destination});

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
      body: const Center(
        child: Text("PROFIL"),
      ),
    );
  }
}