import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class TwitterFeed extends StatefulWidget {
  const TwitterFeed({super.key});

  @override
  State<TwitterFeed> createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height - 200,
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondaryContainer, borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: InAppWebView(initialUrlRequest: URLRequest(url: WebUri("https://twitter.com/RocketBaguette?ref_src=twsrc%5Etfw"))),
        ),
      ),
    );
  }
}

//<a class="twitter-timeline" data-theme="dark" href="https://twitter.com/RocketBaguette?ref_src=twsrc%5Etfw">Tweets by RocketBaguette</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>