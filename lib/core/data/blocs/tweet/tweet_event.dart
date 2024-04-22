part of 'tweet_bloc.dart';

@immutable
sealed class TweetEvent {}

final class LoadingTweetEvent extends TweetEvent {}
