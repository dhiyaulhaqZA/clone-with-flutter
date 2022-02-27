import 'package:cloner/experiment_screen.dart';
import 'package:cloner/instagram_profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/first': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/experiment': (context) => const ExperimentScreen(),
        '/': (context) => const InstagramProfileScreen(),
      },
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloner'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4), 
        child: ListView(children: _getListData(context)
        )
      ),
    );
  }

  _getListData(BuildContext context) {
    List<ScreenItem> screenItems = [
      ScreenItem(path: '/first', title: 'First'),
      ScreenItem(path: '/second', title: 'Second'),
      ScreenItem(path: '/experiment', title: 'Experiment'),
    ];
    
    List<Widget> widgets = [];
    for (var element in screenItems) {
      widgets.add(Padding(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 4), 
        child: ElevatedButton(
        onPressed: (() => Navigator.pushNamed(context, element.path)), 
        child: Text(element.title)
        )));
    }
    return widgets;
  }
  
}

class ScreenItem {
  String path;
  String title;

  ScreenItem({
    required this.path, 
    required this.title
  });
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}