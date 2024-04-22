part of 'tweet_bloc.dart';

@immutable
sealed class TweetState {}

final class TweetInitial extends TweetState {}

final class TweetLoaded extends TweetState {
  final List<dynamic> tweets;

  TweetLoaded({
    required this.tweets,
  });
}
