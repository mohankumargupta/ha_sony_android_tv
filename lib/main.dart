import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Assistant Android TV Skin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Colors.white70,
            fontSize: 30.0,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            decoration: TextDecoration.underline,
            decorationThickness: 4.0,
          ),
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
              left: 80.0, right: 8.0, top: 40.0, bottom: 8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
              TopMenuLeftOfHighlightedText("Icon"),
              TopMenuHighlightedText(
                "Home",
              ),
              TopMenuRightOfHighlightedText("Weather"),
              TopMenuText("Dashboards"),
              TopMenuText("Controls"),
              TopMenuText("Settings"),
            ]),
          ]),
        ),
      ),
    );
  }
}

class TopMenuText extends StatelessWidget {
  final String text;

  const TopMenuText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ));
  }
}

class TopMenuHighlightedText extends StatelessWidget {
  final String text;

  const TopMenuHighlightedText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: Colors.white,
          width: 1.5,
        )),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

class TopMenuLeftOfHighlightedText extends StatelessWidget {
  final String text;

  const TopMenuLeftOfHighlightedText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            left: 14.0, right: 26.0, top: 8.0, bottom: 8.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ));
  }
}

class TopMenuRightOfHighlightedText extends StatelessWidget {
  final String text;

  const TopMenuRightOfHighlightedText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            left: 26.0, right: 14.0, top: 8.0, bottom: 8.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ));
  }
}
