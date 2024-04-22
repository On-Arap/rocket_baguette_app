import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_baguette_app/core/classes/destinations.dart';
import 'package:rocket_baguette_app/core/data/tweet/tweet_bloc.dart';
import 'package:rocket_baguette_app/core/widgets/twitter_feed.dart';

class TwitterPage extends StatelessWidget {
  const TwitterPage({super.key, required this.destination});

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TweetBloc()..add(LoadingTweetEvent()),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TwitterFeed(),
          ],
        ),
      ),
    );
  }
}
