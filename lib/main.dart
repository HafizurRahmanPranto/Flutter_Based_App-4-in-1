import 'package:prantoapp/profile_page.dart';
import 'package:prantoapp/quiz_page.dart';
import 'package:prantoapp/weather_page.dart';
import 'package:flutter/material.dart';
import 'calculator_page.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  bool isDarkMode = false;

  void _toggleTheme(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prantos_App',
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(
        isDarkMode: isDarkMode,
        onThemeChanged: _toggleTheme,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  HomePage({required this.isDarkMode, required this.onThemeChanged});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ProfilePage(onThemeChanged: (value) {}, isDarkMode: false),
    WeatherPage(),
    QuizPage(),
    CalculatorPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _widgetOptions[0] = ProfilePage(
      onThemeChanged: widget.onThemeChanged,
      isDarkMode: widget.isDarkMode,
    );

    final selectedItemColor = widget.isDarkMode
        ? const Color.fromARGB(255, 255, 255, 255)
        : const Color.fromARGB(255, 0, 0, 0);
    final unselectedItemColor = widget.isDarkMode
        ? Color.fromARGB(255, 255, 255, 255).withOpacity(0.6)
        : Color.fromARGB(255, 0, 0, 0).withOpacity(0.6);
    final backgroundColor =
        widget.isDarkMode ? const Color.fromARGB(255, 0, 0, 0) : Colors.white;

    return Scaffold(
      appBar: AppBar(
        title: Text('Prantos_App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.onThemeChanged(!widget.isDarkMode);
        },
        child: Icon(
          widget.isDarkMode ? Icons.brightness_7 : Icons.brightness_2,
          color: const Color.fromARGB(255, 14, 14, 14),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'Weather',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
        backgroundColor: backgroundColor,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
