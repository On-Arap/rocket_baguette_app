import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_baguette_app/core/classes/destinations.dart';
import 'package:rocket_baguette_app/core/data/blocs/clips/clips_bloc.dart';
import 'package:rocket_baguette_app/core/widgets/clip_tile.dart';

class ClipsPage extends StatefulWidget {
  const ClipsPage({super.key, required this.destination});

  final Destination destination;

  @override
  State<ClipsPage> createState() => _ClipsPageState();
}

class _ClipsPageState extends State<ClipsPage> {
  int clipselected = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClipsBloc, ClipsState>(builder: (context, state) {
      if (state is ClipsLoaded) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            shrinkWrap: false,
            itemCount: state.clips.length,
            itemBuilder: (BuildContext context, int index) {
              var exp = state.clips[index];
              return InkWell(
                onTap: () {
                  setState(() {
                    if (clipselected == exp.index) {
                      clipselected = 0;
                    } else {
                      clipselected = exp.index;
                    }
                  });
                },
                child: ClipTile(
                  player: exp.player,
                  description: exp.description,
                  team1: exp.team1,
                  team2: exp.team2,
                  shown: clipselected == exp.index,
                ),
              );
            },
          ),
        );
      } else {
        return const CircularProgressIndicator(color: Colors.red);
      }
    });
  }
}
