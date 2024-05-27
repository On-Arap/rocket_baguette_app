import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'tweet_event.dart';
part 'tweet_state.dart';

class TweetBloc extends Bloc<TweetEvent, TweetState> {
  TweetBloc() : super(TweetInitial()) {
    on<TweetEvent>((event, emit) {});
    on<LoadingTweetEvent>(_loadTweets);
  }

  void _loadTweets(TweetEvent event, Emitter<TweetState> emit) async {
    const String apiKey = 'I2RP0IpEUGJSBihRpN1dVWZUl';
    const String apiSecretKey = 'iRfjNMUkPXIqF6GTL8eXeDtda4eehpM0GutvsGovQipJMTQeFZ';
    // ignore: unused_local_variable
    const String accessToken = '40645264-vrImxGtMHxoWWK3vIHDsEGMZK8tvBgVLiYywx0Rbp';
    // ignore: unused_local_variable
    const String accessTokenSecret = 'ogcYQaWBmOYncxtDEHOjMyuou6UN8paWEDNwYj6rcJJh2';
    const String bearerToken = 'AAAAAAAAAAAAAAAAAAAAAG7HtQEAAAAAm%2BijIdh27rXeojqwfg2qO6RCy3g%3DxwUFILq5feY38Htw1LL7nbFEvf5zArtoSOBPJ4pvqrB6cGFRAs';
    const String apiUrl = 'https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=RocketBaguette&count=5';

    // ignore: unused_local_variable
    final String credentials = base64.encode(utf8.encode('$apiKey:$apiSecretKey'));

    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'Authorization': 'Bearer $bearerToken',
        'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8',
      },
    );
    inspect(response);

    // if (response.statusCode == 200) {
    //   final tweets = jsonDecode(response.body);
    //   inspect(tweets);
    //   final latestTweet = tweets[0]['text'];
    // } else {
    //   throw Exception('Failed to fetch latest tweet $response');
    // }

    emit(TweetLoaded(tweets: const ['1', '2', '3', '4', '5']));
  }
}
