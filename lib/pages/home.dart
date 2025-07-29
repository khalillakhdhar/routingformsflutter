import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accueil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/details');
              },
              child: const Text("Aller à la page Détails"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/carList');
              },
              child: const Text("Voir la liste des voitures"),
            ),
          ],
        ),
        // envoie de paramétre vers la page détails
        // child: ElevatedButton(
      ),
    );
  }
}
