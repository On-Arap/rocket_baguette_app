import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tweet_event.dart';
part 'tweet_state.dart';

class TweetBloc extends Bloc<TweetEvent, TweetState> {
  TweetBloc() : super(TweetInitial()) {
    on<TweetEvent>((event, emit) {});
    on<LoadingTweetEvent>(_loadTweets);
  }

  void _loadTweets(TweetEvent event, Emitter<TweetState> emit) {
    emit(TweetLoaded(tweets: ['1', '2', '3', '4', '5']));
  }
}
