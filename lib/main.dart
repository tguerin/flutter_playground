import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_playground/app_theme.dart';
import 'package:flutter_playground/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeProvider>(
    create: (_) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      final themeMode =
          themeProvider.darkMode ? ThemeMode.dark : ThemeMode.light;
      final appTheme = AppTheme();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      return MaterialApp(
        title: 'Translucent Navigation',
        themeMode: themeMode,
        theme: appTheme.light(),
        darkTheme: appTheme.dark(),
        home: const MyHomePage(title: 'Translucent Navigation'),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return AnnotatedRegion(
          value: SystemUiOverlayStyle(
            systemNavigationBarContrastEnforced: false,
            systemNavigationBarDividerColor: Colors.transparent,
            systemNavigationBarIconBrightness: themeProvider.darkMode ? Brightness.light : Brightness.dark,
            systemNavigationBarColor: Colors.transparent,
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "The current theme is :",
                  ),
                  Text(themeProvider.darkMode ? "Dark" : "Light"),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                themeProvider.invertCurrentThemeMode();
              },
              tooltip: 'Invert current theme mode',
              child: const Icon(Icons.change_circle),
            ),
          ));
    });
  }
}
