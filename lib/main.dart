import 'package:atomic_design/design/atoms/builders/builder_input.dart';
import 'package:atomic_design/design/atoms/builders/builder_text.dart';
import 'package:atomic_design/design/molecules/builders/builder_button.dart';
import 'package:flutter/material.dart';

import 'design/atoms/app/atom_input/atom_input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ...BuilderInput.instance().whenRegular(hintText: "hint", helperText: "help", labelText: "label").build(),
            ...BuilderText.instance().h1('You have pushed the button this many times:', context: context).build(),
            ...BuilderText.instance().h2('$_counter', context: context).build(),
            ...BuilderButton.instance().whenRegular(data: "Add", onPress: _incrementCounter).build(),
            ...BuilderButton.instance().whenError(data: "More", onPress: _incrementCounter).whenRegular(data: "Add", onPress: _incrementCounter).build(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
