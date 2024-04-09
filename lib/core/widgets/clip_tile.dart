import 'package:flutter/material.dart';

class ClipTile extends StatelessWidget {
  final String imgClip;
  final String player;
  final String description;
  final String team1;
  final String team2;
  final bool shown;

  const ClipTile({
    super.key,
    required this.imgClip,
    required this.player,
    required this.description,
    required this.team1,
    required this.team2,
    required this.shown,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondaryContainer, borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(children: [
                Image(
                  image: AssetImage(imgClip),
                  height: 40,
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(children: [
                    Text(
                      player,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      description,
                      style: TextStyle(color: Theme.of(context).colorScheme.primary),
                    ),
                  ]),
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage("assets/teams/$team1.png"),
                      height: 30,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'vs',
                      style: TextStyle(fontStyle: FontStyle.italic, color: Theme.of(context).colorScheme.primary),
                      textAlign: TextAlign.right,
                    ),
                    const SizedBox(width: 5),
                    Image(
                      image: AssetImage("assets/teams/$team2.png"),
                      height: 30,
                    ),
                  ],
                ),
              ]),
              shown ? const SizedBox(height: 50) : const SizedBox(height: 0),
            ],
          ),
        ),
      ),
    );
  }
}
