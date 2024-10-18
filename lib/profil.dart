import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
            ),
            SizedBox(height: 16),
            Text(
              'Nama Pengguna',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'email@contoh.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('123-456-7890'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Malang, Indonesia'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol ditekan
              },
              child: Text('Edit Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
