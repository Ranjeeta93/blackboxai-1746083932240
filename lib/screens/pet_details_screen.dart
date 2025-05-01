import 'package:flutter/material.dart';
import '../models/pet.dart';

class PetDetailsScreen extends StatelessWidget {
  final Pet pet;

  const PetDetailsScreen({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              pet.imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pet.name,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${pet.breed}, Age: ${pet.age} years',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$${pet.price.toStringAsFixed(2)}',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.teal),
                  ),
                  SizedBox(height: 16),
                  Text(
                    pet.description,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
