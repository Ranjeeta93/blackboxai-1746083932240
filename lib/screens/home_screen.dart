import 'package:flutter/material.dart';
import '../models/pet.dart';
import 'pet_details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Pet> pets = [
    Pet(
      id: '1',
      name: 'Bella',
      breed: 'Golden Retriever',
      age: 3,
      price: 500.0,
      imageUrl: 'https://images.pexels.com/photos/46024/pexels-photo-46024.jpeg',
      description: 'Friendly and energetic dog, great with kids.',
    ),
    Pet(
      id: '2',
      name: 'Max',
      breed: 'German Shepherd',
      age: 4,
      price: 600.0,
      imageUrl: 'https://images.pexels.com/photos/1805164/pexels-photo-1805164.jpeg',
      description: 'Loyal and intelligent, excellent guard dog.',
    ),
    Pet(
      id: '3',
      name: 'Luna',
      breed: 'Siamese Cat',
      age: 2,
      price: 300.0,
      imageUrl: 'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
      description: 'Affectionate and vocal cat, loves attention.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Shop'),
      ),
      body: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (context, index) {
          final pet = pets[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.network(
                pet.imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(pet.name),
              subtitle: Text('${pet.breed} - \$${pet.price.toStringAsFixed(2)}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PetDetailsScreen(pet: pet),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
