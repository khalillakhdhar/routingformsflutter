import 'package:flutter/material.dart';
import 'package:routingforms/pages/carListPage.dart';

class CarDetailPage extends StatelessWidget {
  final Car car;
  const CarDetailPage({Key? key, required this.car}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${car.marque} ${car.model}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Marque: ${car.marque}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            Text('Modèle: ${car.model}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            Text(
              'Prix: \$${car.prix.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
