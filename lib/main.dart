import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thegorgeousotp/pages/splash_page.dart';
import 'package:thegorgeousotp/stores/login_store.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginStore>(
          create: (_) => LoginStore(),
        )
      ],
      child: const MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}