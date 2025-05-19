import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> uploadHotelDetails() async {
  final List<Map<String, dynamic>> hotels = [
    {
      "name": "EcoStay Gilgit",
      "location": "Gilgit",
      "rating": "4.5",
      "price": "PKR 6,500 per night",
      "imageUrl": "https://via.placeholder.com/150",
      "description": "Eco-friendly hotel for nature lovers.",
      "facilities": "Garden, WiFi, Pet Friendly"
    },
    {
      "name": "Mountain View Inn",
      "location": "Hunza",
      "rating": "4.7",
      "price": "PKR 8,000 per night",
      "imageUrl": "https://via.placeholder.com/150",
      "description": "Scenic views of the mountains and valley.",
      "facilities": "Balcony, Free Breakfast, WiFi"
    },
    {
      "name": "Serena Gilgit",
      "location": "Gilgit",
      "rating": "4.9",
      "price": "PKR 10,000 per night",
      "imageUrl": "https://via.placeholder.com/150",
      "description": "Luxury hotel with all amenities.",
      "facilities": "Swimming Pool, Gym, Fine Dining"
    },
    {
      "name": "Royal Garden Hotel",
      "location": "Skardu",
      "rating": "4.4",
      "price": "PKR 7,000 per night",
      "imageUrl": "https://via.placeholder.com/150",
      "description": "Peaceful garden setting for families.",
      "facilities": "Garden, Parking, Room Service"
    },
    {
      "name": "Heaven Hill Lodge",
      "location": "Naltar",
      "rating": "4.6",
      "price": "PKR 5,500 per night",
      "imageUrl": "https://via.placeholder.com/150",
      "description": "Cozy lodge near ski slopes.",
      "facilities": "Fireplace, Ski Equipment, Free WiFi"
    },
    {
      "name": "Snow Valley Retreat",
      "location": "Khaplu",
      "rating": "4.3",
      "price": "PKR 6,800 per night",
      "imageUrl": "https://via.placeholder.com/150",
      "description": "Retreat with snow-covered views.",
      "facilities": "Room Heater, Breakfast, WiFi"
    },
    {
      "name": "Rakaposhi View Hotel",
      "location": "Hunza",
      "rating": "4.8",
      "price": "PKR 9,200 per night",
      "imageUrl": "https://via.placeholder.com/150",
      "description": "Breathtaking views of Rakaposhi Peak.",
      "facilities": "Terrace, Coffee Bar, Free Parking"
    },
    {
      "name": "Baltit Heritage Lodge",
      "location": "Karimabad",
      "rating": "4.6",
      "price": "PKR 7,500 per night",
      "imageUrl": "https://via.placeholder.com/150",
      "description": "Traditional Hunza architecture experience.",
      "facilities": "Cultural Tours, Free WiFi, Heater"
    },
    {
      "name": "Valley View Motel",
      "location": "Astore",
      "rating": "4.2",
      "price": "PKR 5,000 per night",
      "imageUrl": "https://via.placeholder.com/150",
      "description": "Simple and affordable stay in valley.",
      "facilities": "Basic Rooms, WiFi, Parking"
    },
    {
      "name": "LakeSide Resort",
      "location": "Satpara",
      "rating": "4.5",
      "price": "PKR 8,200 per night",
      "imageUrl": "https://via.placeholder.com/150",
      "description": "Relaxing lake view resort experience.",
      "facilities": "Lake View, Restaurant, WiFi"
    }
  ];

  for (final hotel in hotels) {
    await FirebaseFirestore.instance.collection("details").add(hotel);
  }

  print("✅ All hotel details uploaded successfully!");
}
