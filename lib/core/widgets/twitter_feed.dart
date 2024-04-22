import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:rocket_baguette_app/core/data/tweet/tweet_bloc.dart';

class TwitterFeed extends StatefulWidget {
  const TwitterFeed({super.key});

  @override
  State<TwitterFeed> createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TweetBloc, TweetState>(builder: (context, state) {
      if (state is TweetLoaded) {
        inspect(state.tweets);
        return Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: SingleChildScrollView(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: state.tweets.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(state.tweets[index]);
              },
            ),
          ),
        );
      } else {
        return const CircularProgressIndicator();
      }
    });
  }
}

//<a class="twitter-timeline" data-theme="dark" href="https://twitter.com/RocketBaguette?ref_src=twsrc%5Etfw">Tweets by RocketBaguette</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>