import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TwitchPlayer extends StatefulWidget {
  const TwitchPlayer({super.key});

  @override
  State<TwitchPlayer> createState() => _TwitchPlayerState();
}

class _TwitchPlayerState extends State<TwitchPlayer> {
  final WebViewController _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://player.twitch.tv/?channel=rocketbaguette&enableExtensions=true&muted=false&parent=twitch.tv&quality=chunked&volume=0.50'));

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: MediaQuery.of(context).size.height * 0.30,
      width: MediaQuery.of(context).size.width - 25,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondaryContainer, borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: WebViewWidget(controller: _controller),
    ));
  }
}
