import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          seedColor: const Color.fromARGB(255, 43, 251, 255),
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
        backgroundColor: const Color.fromARGB(255, 43, 251, 255),
      ),
      body: Container(
        child: _card(),
      ),
    );
  }

  Widget _card() {
    return Container(
      height: _deviseHeight * 0.5,
      width: _deviseWidth * 0.8,
      margin: EdgeInsets.symmetric(
        vertical: _deviseHeight * 0.05,
        horizontal: _deviseWidth * 0.1,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue, // Border color
          width: 3, // Border width
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: _deviseHeight * 0.02  ,
              ),
              height: _deviseHeight * 0.25,
              decoration: const BoxDecoration(  
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/man/man1.png',
                  ),
                ),
              ),
            ),
          ),
          const Row(
            
            children: [

              Text(
                
                'Faisal ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  
                ),
                
              ),
              Text(
              
                ' Nadaf',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  
                ),
              
              ),
            ],
          )
        ],
      ),
    );
  }
}
