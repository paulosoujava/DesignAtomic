import 'package:atomic_design/design/pages/login_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atomic Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Atomic Design'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.title),
      ),
      body: Scaffold(body: SafeArea(child: LoginPage())),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }

  Center buildCenter() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ...FormComposition.instance().buildLogin(onPressed: () {}).build(),

            //   ...BuilderText.instance().h1('You have pushed the button this many times:', context: context).build(),
            //   ...BuilderText.instance().h2('$_counter', context: context).build(),
            //   ...BuilderButton.instance().whenRegular(data: "Add", onPress: _incrementCounter).build(),
            //   ...BuilderButton.instance().whenError(data: "More", onPress: _incrementCounter).whenRegular(data: "Add", onPress: _incrementCounter).build(),
          ],
        ),
      ),
    );
  }
}
