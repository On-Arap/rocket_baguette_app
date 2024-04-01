import 'package:flutter/material.dart';

class TwitchPlayer extends StatefulWidget {
  final String video = "https://www.twitch.tv/rocketbaguette";

  const TwitchPlayer({super.key});

  @override
  State<TwitchPlayer> createState() => _TwitchPlayerState();
}

class _TwitchPlayerState extends State<TwitchPlayer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.30,
        width: MediaQuery.of(context).size.width - 25,
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondaryContainer, borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Center(
          child: Text(
            "Player",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
    );
  }
}
