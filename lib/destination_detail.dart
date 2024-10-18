import 'package:flutter/material.dart';
import 'package:my_travel_app/destination_model.dart';

class DestinationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DestinationModel destination =
        ModalRoute.of(context)!.settings.arguments as DestinationModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(destination.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(destination.imageUrl,
                width: double.infinity, height: 250, fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(destination.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Lokasi: ${destination.location}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Deskripsi: ${destination.description}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Harga: ${destination.price} IDR',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Rating: ${destination.rating}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Aktivitas: ${destination.activities}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Kontak: ${destination.contact}',
                style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
