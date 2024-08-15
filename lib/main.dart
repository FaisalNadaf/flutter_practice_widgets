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
  late double _deviceHeight, _deviceWidth;
  bool hideMenu = false;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _deviceHeight * 0.1,
        title: _header(),
        backgroundColor: const Color.fromARGB(255, 43, 251, 255),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 43, 251, 255),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Colors.red;
              },
            ),
            ListTile(
              title: const Text('Business'),
              onTap: () {
                Colors.red;
              },
            ),
            ListTile(
              title: const Text('School'),
              onTap: () {
                Colors.red;
              },
            ),
            ListTile(
              title: const Text('College'),
              onTap: () {
                Colors.red;
              },
            ),
          ],
        ),
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
      floatingActionButton: _addTaskButton(),
    );
  }

  Widget _card(String fname, String lname, String about, String imgUrl) {
    return Container(
      height: _deviceHeight * 0.5,
      width: _deviceWidth * 0.8,
      margin: EdgeInsets.symmetric(
        vertical: _deviceHeight * 0.05,
        horizontal: _deviceWidth * 0.1,
      ),
      padding: EdgeInsets.symmetric(
        vertical: _deviceHeight * 0,
        horizontal: _deviceWidth * 0.1,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 31, 77, 114), // Border color
          width: 3, // Border width
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: _deviceHeight * 0.02,
              ),
              height: _deviceHeight * 0.25,
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
              _customButton('Message'),
              _customButton('Connect'),
            ],
          )
        ],
      ),
    );
  }

  Widget _customButton(String text) {
    return Container(
      width: _deviceWidth * 0.26,
      margin: EdgeInsets.symmetric(
        vertical: _deviceHeight * 0.02,
      ),
      padding: EdgeInsets.symmetric(
        vertical: _deviceHeight * 0.0003,
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

  Widget _addTaskButton() {
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
        const Text(
          'HireOne',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.camera,
                size: 30,
              ),
              Icon(
                Icons.search,
                size: 30,
              ),
              Icon(
                Icons.more_vert,
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget popUpAdd() {
    return AlertDialog();
  }
}
