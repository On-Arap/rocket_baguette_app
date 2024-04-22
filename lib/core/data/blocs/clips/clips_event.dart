part of 'clips_bloc.dart';

@immutable
sealed class ClipsEvent {}

final class LoadingClipEvent extends ClipsEvent {}
