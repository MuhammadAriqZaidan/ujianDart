import 'package:flutter/material.dart';

class Gridproduct extends StatelessWidget {
  const Gridproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Jumlah kolom dalam grid
        crossAxisSpacing: 10.0, // Jarak horizontal antara item
        mainAxisSpacing: 10.0, // Jarak vertikal antara item
        childAspectRatio: 1.0, // Rasio aspek dari item (lebar/tinggi)
      ),
      itemCount: 20, // Jumlah item dalam grid
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.blue[300], borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                'images/Cirno_result.jpg',
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Item $index',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
