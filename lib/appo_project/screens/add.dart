import 'package:cloud_firestore/cloud_firestore.dart';

void addHotelsToFirestore() {
  final hotels = [
    {
      "name": "Hotel Serena Gilgit",
      "location": "Gilgit",
      "description": "Luxurious hotel with mountain views.",
      "price": "PKR 10,000 per night",
      "rating": "4.8",
      "facilities": "Free WiFi, Parking, Restaurant",
      "imageUrl": "https://via.placeholder.com/150"
    },
    {
      "name": "Gilgit Gateway Hotel",
      "location": "Gilgit",
      "description": "Comfortable and budget-friendly stay.",
      "price": "PKR 5,500 per night",
      "rating": "4.3",
      "facilities": "WiFi, Laundry, Room Service",
      "imageUrl": "https://via.placeholder.com/150"
    },
    {
      "name": "Royal Inn Gilgit",
      "location": "Gilgit",
      "description": "Elegant rooms with valley view.",
      "price": "PKR 7,200 per night",
      "rating": "4.6",
      "facilities": "Restaurant, Wifi, Hot Water",
      "imageUrl": "https://via.placeholder.com/150"
    },
    {
      "name": "Mountain Lodge",
      "location": "Gilgit",
      "description": "Peaceful location surrounded by nature.",
      "price": "PKR 8,000 per night",
      "rating": "4.7",
      "facilities": "Free Breakfast, Parking, WiFi",
      "imageUrl": "https://via.placeholder.com/150"
    },
    {
      "name": "EcoStay Gilgit",
      "location": "Gilgit",
      "description": "Eco-friendly hotel for nature lovers.",
      "price": "PKR 6,500 per night",
      "rating": "4.5",
      "facilities": "Garden, WiFi, Pet Friendly",
      "imageUrl": "https://via.placeholder.com/150"
    },
    {
      "name": "Hill View Resort",
      "location": "Gilgit",
      "description": "Beautiful views with modern amenities.",
      "price": "PKR 9,000 per night",
      "rating": "4.9",
      "facilities": "Spa, Restaurant, WiFi",
      "imageUrl": "https://via.placeholder.com/150"
    }
  ];

  final firestore = FirebaseFirestore.instance;

  for (var hotel in hotels) {
    firestore.collection('hotels').add(hotel).then((_) {
      print('${hotel['name']} added');
    });
  }
}
