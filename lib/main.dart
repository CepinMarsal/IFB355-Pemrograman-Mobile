import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
        onMapsTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MapsPage(),
            ),
          );
        },
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

class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  static const LatLng itenas = LatLng(-6.8989, 107.6361);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: itenas,
          zoom: 17,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('itenas'),
            position: itenas,
            infoWindow: InfoWindow(
              title: 'Institut Teknologi Nasional Bandung',
              snippet: 'ITENAS',
            ),
          ),
        },
      ),
    );
  }
}