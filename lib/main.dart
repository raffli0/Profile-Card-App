import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatefulWidget {
  const ProfileCardApp({super.key});

  @override
  State<ProfileCardApp> createState() => _ProfileCardAppState();
}

class _ProfileCardAppState extends State<ProfileCardApp> {
  ThemeMode themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Card App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode, // pakai ThemeMode.system
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile Card App'),
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                setState(() {
                  if (value == 'light')
                    themeMode = ThemeMode.light;
                  else if (value == 'dark')
                    themeMode = ThemeMode.dark;
                  else
                    themeMode = ThemeMode.system;
                });
              },
              itemBuilder: (_) => [
                const PopupMenuItem(value: 'light', child: Text('Light Theme')),
                const PopupMenuItem(value: 'dark', child: Text('Dark Theme')),
                const PopupMenuItem(
                  value: 'system',
                  child: Text('System Default'),
                ),
              ],
            ),
          ],
        ),
        body: const ProfilePage(),
      ),
    );
  }
}
