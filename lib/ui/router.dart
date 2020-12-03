import 'package:flutter/material.dart';
import 'package:survea_app/ui/views/all_views.dart';
// to use Navigator.pushNamed(context, '');

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => Home());
      case 'login':
        return MaterialPageRoute(builder: (_) => Login());
      case 'register':
        return MaterialPageRoute(builder: (_) => Register());
      case 'survey':
        return MaterialPageRoute(builder: (_) => Survey());
      case 'surveylist':
        return MaterialPageRoute(builder: (_) => SurveyList());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
