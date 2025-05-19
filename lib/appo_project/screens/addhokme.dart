import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddHotelScreen1 extends StatefulWidget {
  const AddHotelScreen1({super.key});

  @override
  State<AddHotelScreen1> createState() => _AddHotelScreenState();
}

class _AddHotelScreenState extends State<AddHotelScreen1> {
  final TextEditingController _hotelIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> addHotelToFirestore() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseFirestore.instance.collection('hotels').add({
          'hotel_id': _hotelIdController.text.trim(),
          'name': _nameController.text.trim(),
          'location': _locationController.text.trim(),
          'description': _descriptionController.text.trim(),
          'created_at': FieldValue.serverTimestamp(),
        });

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Hotel added successfully')),
        );

        _hotelIdController.clear();
        _nameController.clear();
        _locationController.clear();
        _descriptionController.clear();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Hotel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _hotelIdController,
                decoration: const InputDecoration(labelText: 'Hotel ID'),
                validator: (value) => value!.isEmpty ? 'Enter hotel ID' : null,
              ),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Hotel Name'),
                validator: (value) => value!.isEmpty ? 'Enter name' : null,
              ),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: 'Location'),
                validator: (value) => value!.isEmpty ? 'Enter location' : null,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 3,
                validator: (value) => value!.isEmpty ? 'Enter description' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: addHotelToFirestore,
                child: const Text('Add Hotel'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
