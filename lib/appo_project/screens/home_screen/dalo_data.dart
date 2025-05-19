import 'package:cloud_firestore/cloud_firestore.dart';

void uploadHotelsToFirestore() async {
  final hotels = [
    {
      'name': 'Serena Gilgit',
      'location': 'Gilgit',
      'rating': 4.8,
      'fee': 10500,
      'image': 'https://example.com/serena.jpg',
    },
    {
      'name': 'Hunza View Hotel',
      'location': 'Hunza',
      'rating': 4.6,
      'fee': 8000,
      'image': 'https://example.com/hunza.jpg',
    },
    {
      'name': 'Eagle Nest',
      'location': 'Karimabad',
      'rating': 4.5,
      'fee': 7500,
      'image': 'https://example.com/eagle.jpg',
    },
    {
      'name': 'Fairy Meadows Resort',
      'location': 'Raikot',
      'rating': 4.7,
      'fee': 9500,
      'image': 'https://example.com/fairy.jpg',
    },
    {
      'name': 'Shangrila Resort',
      'location': 'Skardu',
      'rating': 4.9,
      'fee': 12000,
      'image': 'https://example.com/shangrila.jpg',
    },
    {
      'name': 'Baltit Inn',
      'location': 'Baltit',
      'rating': 4.4,
      'fee': 7200,
      'image': 'https://example.com/baltit.jpg',
    },
    {
      'name': 'Hotel Rehman',
      'location': 'Gilgit',
      'rating': 4.2,
      'fee': 6500,
      'image': 'https://example.com/rehman.jpg',
    },
    {
      'name': 'Glacier Breeze Hotel',
      'location': 'Passu',
      'rating': 4.3,
      'fee': 7800,
      'image': 'https://example.com/glacier.jpg',
    },
    {
      'name': 'Dream View Resort',
      'location': 'Hoper',
      'rating': 4.1,
      'fee': 6800,
      'image': 'https://example.com/dream.jpg',
    },
    {
      'name': 'Mountain Lodge',
      'location': 'Naltar',
      'rating': 4.6,
      'fee': 8900,
      'image': 'https://example.com/mountain.jpg',
    },
  ];

  for (var hotel in hotels) {
    await FirebaseFirestore.instance.collection('motels').add(hotel);
  }

  print("✅ 10 Hotels Uploaded to Firestore 'motels' collection!");
}
