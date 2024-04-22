import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rocket_baguette_app/core/classes/clip.dart';

part 'clips_event.dart';
part 'clips_state.dart';

List<Clip> data = [
  Clip(index: 1, player: "🇧🇪 Atow", description: "Pinch en Overtime", team1: 'kc', team2: 'fc', media: 'RelievedBombasticSageSoBayed-6PldVFOVuIpJ3S_W'),
  Clip(index: 2, player: "🇫🇷 Juicy", description: "Juicy avec la plus grande passe des RLCS", team1: 'm8', team2: 'kc', media: 'SuccessfulGeniusMelonTinyFace-aTaQCJPynsrDU8Gs'),
  Clip(index: 3, player: "🇬🇧 Rise", description: "Rise double tap de fou malade", team1: 'kc', team2: 'fc', media: 'EasyPlainWoodpeckerFutureMan-W8JNJ2UV3eHII6r6'),
  Clip(index: 4, player: "🇫🇷 Vatira", description: "Vatira qui suit une passe d'Atow", team1: 'kc', team2: 'm8', media: 'InventiveFastRatPhilosoraptor-q2CYumKl6rYSw5y5')
];

class ClipsBloc extends Bloc<ClipsEvent, ClipsState> {
  ClipsBloc() : super(ClipsInitial()) {
    on<ClipsEvent>((event, emit) {});
    on<LoadingClipEvent>(_loadingClips);
  }

  void _loadingClips(ClipsEvent event, Emitter<ClipsState> emit) async {
    emit(ClipsLoaded(clips: data));
  }
}
