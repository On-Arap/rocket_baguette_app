import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class TwitchPlayer extends StatefulWidget {
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
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondaryContainer, borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: InAppWebView(initialUrlRequest: URLRequest(url: WebUri("https://player.twitch.tv/?channel=rocketbaguette&enableExtensions=true&muted=false&parent=twitch.tv&quality=chunked&volume=0.50"))),
        ),
      ),
    );
  }
}
