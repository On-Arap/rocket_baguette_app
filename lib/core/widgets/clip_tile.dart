import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ClipTile extends StatelessWidget {
  final String player;
  final String description;
  final String team1;
  final String team2;
  final bool shown;

  const ClipTile({
    super.key,
    required this.player,
    required this.description,
    required this.team1,
    required this.team2,
    required this.shown,
  });

  @override
  Widget build(BuildContext context) {
    double animatedHeight = (!shown ? 0.0 : 300.0);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(width: 3, color: Theme.of(context).colorScheme.primaryContainer),
            boxShadow: [BoxShadow(color: Theme.of(context).colorScheme.secondaryContainer, spreadRadius: 0, blurRadius: 0, offset: const Offset(5, 5))]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Image(
                  image: AssetImage("assets/teams/$team1.png"),
                  height: 50,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        player,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          description,
                          style: TextStyle(color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'vs',
                          style: TextStyle(fontStyle: FontStyle.italic, color: Theme.of(context).colorScheme.primary),
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(width: 5),
                        Image(
                          image: AssetImage("assets/teams/$team2.png"),
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
              AnimatedContainer(
                  duration: const Duration(milliseconds: 120),
                  curve: Curves.decelerate,
                  height: animatedHeight,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: InAppWebView(initialUrlRequest: URLRequest(url: WebUri("https://clips.twitch.tv/embed?clip=HilariousGlutenFreeGullCharlieBitMe-_C6BRiDejYtFMxXN&parent=com.example.rocket_baguette_app&autoplay=false&muted=false"))))),
            ],
          ),
        ),
      ),
    );
  }
}
