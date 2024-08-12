import 'dart:ui';
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
        title: _header(),
        backgroundColor: const Color.fromARGB(255, 43, 251, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _card(
              'Faisal',
              'Nadaf',
              'A paragraph is a series of sentences .',
              'assets/images/man/man1.png',
            ),
            _card(
              'Alex',
              'Per',
              'A paragraph is a series of sentences .',
              'assets/images/man/man2.png',
            ),
            _card(
              'Jhon',
              'Jakobs',
              'A paragraph is a series of sentences .',
              'assets/images/man/man3.png',
            ),
            BottomNavigationBar(items: Icon())
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
      floatingActionButton: _Addtask(),
    );
  }

  Widget _card(String fname, String lname, String about, String imgUrl) {
    return Container(
      height: _deviseHeight * 0.5,
      width: _deviseWidth * 0.8,
      margin: EdgeInsets.symmetric(
        vertical: _deviseHeight * 0.05,
        horizontal: _deviseWidth * 0.1,
      ),
      padding: EdgeInsets.symmetric(
        vertical: _deviseHeight * 0,
        horizontal: _deviseWidth * 0.1,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 31, 77, 114), // Border color
          width: 3, // Border width
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: _deviseHeight * 0.02,
              ),
              height: _deviseHeight * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imgUrl,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                fname + '  ',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                lname,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Text(
            about,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton('Message', 0.26),
              CustomButton('Connect', 0.26),
            ],
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget CustomButton(String text, double width) {
    return Container(
      width: _deviseWidth * 0.26,
      margin: EdgeInsets.symmetric(
        vertical: _deviseHeight * 0.02,
      ),
      padding: EdgeInsets.symmetric(
        vertical: _deviseHeight * 0.0003,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 97, 97, 97),
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 230, 0),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _Addtask() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      child: const Icon(
        Icons.add,
        size: 30,
      ),
    );
  }

  Widget _header() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          size: 30,
          Icons.menu,
        ),
        Text(
          'HireOne',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.camera,
                size: 30,
              ),
              Icon(
                size: 30,
                Icons.search,
              ),
              Icon(
                size: 30,
                Icons.more_vert,
              ),
            ],
          ),
        )
      ],
    );
  }
}
