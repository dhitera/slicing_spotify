import 'package:flutter/material.dart';
import 'package:mradithyan_motionintern_week_3/pages/collection.dart';
import 'package:mradithyan_motionintern_week_3/pages/home.dart';
import 'package:mradithyan_motionintern_week_3/pages/search.dart';
import 'package:mradithyan_motionintern_week_3/widget/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/search': (context) => Search(),
        '/collection': (context) => Collection(),
      },
      home: Stack(
        children: [
          Scaffold(
            body: Navigator(
              onGenerateRoute: (settings) {
                WidgetBuilder builder;
                switch (settings.name) {
                  case '/':
                    builder = (context) => Home();
                    break;
                  case '/search':
                    builder = (context) => Search();
                    break;
                  case '/collection':
                    builder = (context) => Collection();
                    break;
                  default:
                    throw Exception('Invalid route: ${settings.name}');
                }
                return MaterialPageRoute(builder: builder, settings: settings);
              },
            ),
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
