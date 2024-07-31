import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter_practice_widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor:const  Color.fromARGB(255, 43, 251, 255),
        ),
        useMaterial3: true,
      ),
      home: SafeArea(child: MyApp()),
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  late double _deviseHeight, _deviseWidth;
  @override
  Widget build(BuildContext context) {
    _deviseHeight = MediaQuery.of(context).size.height;
    _deviseWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _deviseHeight * 0.1,
        title: const Text(
          'app bar',
        ),
        backgroundColor:const Color.fromARGB(255, 43, 251, 255),
      ),
      body: const Text(
        'faisal',
      ),
    );
  }

  Widget adda() {
    return  Container(
      child: Row(
        
      ),
    );
  }
}
