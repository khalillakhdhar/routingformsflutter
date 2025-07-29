import 'package:flutter/material.dart';
import 'package:routingforms/pages/carDetailPage.dart';

class Car {
  final String marque;
  final String model;
  final double prix;
  Car({required this.marque, required this.model, required this.prix});
}

class CarListPage extends StatelessWidget {
  CarListPage({Key? key}) : super(key: key);

  final List<Car> cars = [
    Car(marque: 'Toyota', model: 'Corolla', prix: 20000),
    Car(marque: 'Honda', model: 'Civic', prix: 22000),
    Car(marque: 'Ford', model: 'Focus', prix: 21000),
    Car(marque: 'Chevrolet', model: 'Malibu', prix: 23000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Liste des voitures')),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return ListTile(
            title: Text('${car.marque} ${car.model}'),
            subtitle: Text('Prix: \$${car.prix.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailPage(car: car),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
