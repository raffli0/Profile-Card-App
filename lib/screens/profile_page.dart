import 'package:flutter/material.dart';
import 'about_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // data awal profil
  String name = 'Tekno';
  String title = 'Scrolling Engineer';
  String description = 'Scrol Fesnuk, Yapping';
  String email = 'tekno@test.com';
  String phone = '+62 812 3456 7890';
  final String imageUrl =
      'https://static.vecteezy.com/system/resources/thumbnails/052/189/266/small/user-man-account-person-people-half-body-head-stickman-stick-figure-profile-silhouette-network-contact-black-white-sign-icon-shape-outline-vector.jpg';

  // controller untuk form edit
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = name;
    _emailController.text = email;
    _phoneController.text = phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipOval(
                    child: Image.network(
                      imageUrl,
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(name, style: Theme.of(context).textTheme.titleLarge),
                  Text(title, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 8),
                  Text(description, textAlign: TextAlign.center),
                  const Divider(height: 30),

                  // tampilkan data
                  Text('Email: $email'),
                  Text('Telepon: $phone'),

                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => _showEditForm(context),
                    child: const Text('Edit Profil'),
                  ),
                  const SizedBox(height: 8),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const AboutPage()),
                      );
                    },
                    child: const Text('Tentang Aplikasi'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // popup form edit profil
  void _showEditForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Edit Profil'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nama'),
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: 'Telepon'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = _nameController.text;
                  email = _emailController.text;
                  phone = _phoneController.text;
                });
                Navigator.pop(context);
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }
}
