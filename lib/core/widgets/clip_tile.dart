import 'package:flutter/material.dart';

class ClipTile extends StatelessWidget {
  const ClipTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondaryContainer, borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            const Image(
              image: AssetImage("assets/atow_goal.jpg"),
              height: 40,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(children: [
                Text(
                  '🇧🇪 Atow',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Pinch en Overtime',
                  style: TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              ]),
            ),
            Text(
              'vs Team Falcons',
              style: TextStyle(fontStyle: FontStyle.italic, color: Theme.of(context).colorScheme.primary),
              textAlign: TextAlign.right,
            ),
          ]),
        ),
      ),
    );
  }
}
