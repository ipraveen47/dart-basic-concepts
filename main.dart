import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:imgflutter/widget/custom_btn.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Testing Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  callBack() {
    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    // var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Flutter App'),
      ),
      body: CustomButton(
        btnName: 'Play',
        icon: const Icon(Icons.play_circle),
        callBack: () {
          print('LoggedIN!!!');
        },
      ),
    );
  }
}
