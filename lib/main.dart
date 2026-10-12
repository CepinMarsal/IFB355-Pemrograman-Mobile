import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/menu_page.dart';
import 'pages/profile.dart';
import 'widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Money',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(
        onMenuTap: () => _selectPage(1),
        onProfileTap: () => _selectPage(2),
      ),
      MenuPage(onBack: () => _selectPage(0)),
      const ProfilePage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Money'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: Navbar(
        currentIndex: _selectedIndex,
        onTap: _selectPage,
      ),
    );
  }
}