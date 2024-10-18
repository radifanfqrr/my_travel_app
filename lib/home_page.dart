import 'package:flutter/material.dart';
import 'package:my_travel_app/destination_model.dart';
import 'package:my_travel_app/destination_detail.dart';
import 'profil.dart';

class HomePage extends StatelessWidget {
  final List<DestinationModel> destinations = [
    DestinationModel(
      name: 'Raja Ampat',
      description: 'Kepulauan indah di Papua Barat dengan keindahan laut.',
      location: 'Papua Barat',
      imageUrl: 'assets/images/raja_ampat.jpg',
      price: 500000,
      rating: 5.0,
      activities: 'Snorkeling, Diving',
      contact: '+628987654321',
    ),
    DestinationModel(
      name: 'MONAS',
      description:
          'Monumen Nasional atau yang disingkat dengan Monas adalah monumen peringatan setinggi 132 meter yang terletak tepat di tengah Lapangan Medan Merdeka, Jakarta Pusat.',
      location: 'Jakarta Pusat, Jakarta',
      imageUrl: 'assets/images/monas.jpg',
      price: 220000,
      rating: 4.7,
      activities: 'Pendakian, Fotografi, Tur Jeep',
      contact: '+62818765432',
    ),
    DestinationModel(
      name: 'Gili Iyang',
      description:
          'Gili Iyang adalah sebuah pulau kecil di antara gugusan pulau-pulau di sebelah timur Pulau Madura.',
      location: 'Sumenep, Jawa Timur',
      imageUrl: 'assets/images/gili_iyang.jpg',
      price: 50000,
      rating: 4.5,
      activities: 'Tur Budaya, Fotografi, Rekreasi',
      contact: '+62815623478',
    ),
    DestinationModel(
      name: 'Tumpak Sewu',
      description:
          'Air Terjun Tumpak Sewu adalah air terjun dengan tinggi sekitar 120 meter, berbatasan dengan Lumajang dan Malang.',
      location: 'Tulungagung, Jawa Timur',
      imageUrl: 'assets/images/tumpak_sewu.jpg',
      price: 50000,
      rating: 4.8,
      activities: 'Tur Candi, Fotografi',
      contact: '+62812345678',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Destination List"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigasi ke halaman profil saat ikon diklik
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            final destination = destinations[index];
            return Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Image.asset(destination.imageUrl,
                    width: 50, height: 75, fit: BoxFit.cover),
                title: Text(destination.name,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                subtitle: Text(destination.location),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DestinationDetail(),
                      settings: RouteSettings(arguments: destination),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
