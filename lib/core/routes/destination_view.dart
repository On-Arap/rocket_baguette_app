import 'package:flutter/material.dart';
import 'package:rocket_baguette_app/core/UI/clips_page.dart';
import 'package:rocket_baguette_app/core/UI/home_page.dart';
import 'package:rocket_baguette_app/core/UI/profil_page.dart';
import 'package:rocket_baguette_app/core/UI/twitter_page.dart';
import '../classes/destinations.dart';

class DestinationView extends StatefulWidget {
  const DestinationView({
    super.key,
    required this.destination,
    required this.navigatorKey,
  });

  final Destination destination;
  final Key navigatorKey;

  @override
  State<DestinationView> createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                {
                  switch (widget.destination.title) {
                    case 'Home':
                      return HomePage(destination: widget.destination);
                    case 'Twitter':
                      return TwitterPage(destination: widget.destination);
                    case 'Clips':
                      return ClipsPage(destination: widget.destination);
                    case 'Profil':
                      return ProfilPage(destination: widget.destination);
                    default:
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.red,
                        ),
                      );
                  }
                }
              // case '/recipe':
              //   {
              //     final data = settings.arguments as Map<String, dynamic>;
              //     return RecipePage(
              //       destination: widget.destination,
              //       title: data['title'],
              //       imageUrl: data['imageUrl'],
              //     );
              //   }
            }
            assert(false);
            return const SizedBox();
          },
        );
      },
    );
  }
}
