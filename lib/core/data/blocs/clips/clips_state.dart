part of 'clips_bloc.dart';

@immutable
sealed class ClipsState {}

final class ClipsInitial extends ClipsState {}

final class ClipsLoaded extends ClipsState {
  final List<Clip> clips;

  ClipsLoaded({
    required this.clips,
  });
}
