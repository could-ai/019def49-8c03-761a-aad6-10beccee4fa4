import 'package:flutter/material.dart';

void main() {
  runApp(const PubgSensitivityApp());
}

class PubgSensitivityApp extends StatelessWidget {
  const PubgSensitivityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vivo 60 PUBG Sensitivity',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.orange,
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        cardColor: const Color(0xFF1E1E1E),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vivo 60 PUBG Settings',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          HeaderSection(),
          SizedBox(height: 16),
          SensitivityCard(
            title: 'Camera Sensitivity (Free Look)',
            icon: Icons.visibility,
            settings: {
              '3rd Person Camera (Character, Vehicle)': '120%',
              'Camera (Parachuting)': '120%',
              '1st Person Camera (Character)': '104%',
            },
          ),
          SizedBox(height: 16),
          SensitivityCard(
            title: 'Camera Sensitivity',
            subtitle:
                'Affects the sensitivity of the camera when the screen is swiped without firing.',
            icon: Icons.camera_alt,
            settings: {
              '3rd Person No Scope': '110%',
              '1st Person No Scope': '104%',
              'Red Dot, Holographic, Aim Assist': '50%',
              '2x Scope': '30%',
              '3x Scope, Win94': '22%',
              '4x Scope, VSS': '14%',
              '6x Scope': '10%',
              '8x Scope': '8%',
            },
          ),
          SizedBox(height: 16),
          SensitivityCard(
            title: 'ADS Sensitivity',
            subtitle:
                'Affects the sensitivity of the camera when the screen is swiped while firing.',
            icon: Icons.my_location,
            settings: {
              '3rd Person No Scope': '110%',
              '1st Person No Scope': '104%',
              'Red Dot, Holographic, Aim Assist': '50%',
              '2x Scope': '30%',
              '3x Scope, Win94': '22%',
              '4x Scope, VSS': '15%',
              '6x Scope': '10%',
              '8x Scope': '8%',
            },
          ),
          SizedBox(height: 16),
          SensitivityCard(
            title: 'Gyroscope Sensitivity',
            subtitle:
                'When the Gyroscope is activated, the sensitivity of the tilt camera controls.',
            icon: Icons.screen_rotation,
            settings: {
              '3rd Person No Scope': '300%',
              '1st Person No Scope': '300%',
              'Red Dot, Holographic, Aim Assist': '300%',
              '2x Scope': '300%',
              '3x Scope, Win94': '250%',
              '4x Scope, VSS': '200%',
              '6x Scope': '80%',
              '8x Scope': '60%',
            },
          ),
          SizedBox(height: 16),
          SensitivityCard(
            title: 'ADS Gyroscope Sensitivity',
            subtitle:
                'When the Gyroscope is activated, the sensitivity of the tilt camera controls while firing.',
            icon: Icons.vibration,
            settings: {
              '3rd Person No Scope': '300%',
              '1st Person No Scope': '300%',
              'Red Dot, Holographic, Aim Assist': '300%',
              '2x Scope': '300%',
              '3x Scope, Win94': '250%',
              '4x Scope, VSS': '200%',
              '6x Scope': '80%',
              '8x Scope': '60%',
            },
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange.withOpacity(0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.phone_android, color: Colors.orange, size: 28),
              SizedBox(width: 8),
              Text(
                'Vivo V60 / Y60 Series',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Optimal PUBG Mobile Sensitivity Settings for Vivo 60 models. These settings provide a balanced experience for both recoil control and fast reflexes. Adjust slightly based on your personal playstyle and whether you use screen protectors.',
            style: TextStyle(color: Colors.white70, height: 1.4),
          ),
        ],
      ),
    );
  }
}

class SensitivityCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  final Map<String, String> settings;

  const SensitivityCard({
    super.key,
    required this.title,
    this.subtitle,
    required this.icon,
    required this.settings,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        initiallyExpanded: true,
        leading: Icon(icon, color: Colors.orange),
        title: Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        subtitle: subtitle != null
            ? Text(subtitle!,
                style: const TextStyle(fontSize: 12, color: Colors.grey))
            : null,
        children: settings.entries.map((entry) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(entry.key,
                      style: const TextStyle(color: Colors.white70)),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    entry.value,
                    style: const TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
