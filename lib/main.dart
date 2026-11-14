import 'package:flutter/material.dart';

void main() {
  runApp(Tes());
}

class Tes extends StatelessWidget {
  Tes({super.key});

  List<String> menu = ["Soto", "Rawon"];
  List<int> harga = [10000, 15000];
  List<String> porsi = ["1 Porsi", "1 Porsi"];

  List<String> gambar = ["assets/soto.jpg", "assets/rawon.jpg"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Menu Makanan"),
          backgroundColor: Color(0xfffeff6e),
foregroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Table(
            border: TableBorder.all(width: 2),
            columnWidths: {
              0: FlexColumnWidth(0.6),
              1: FlexColumnWidth(1.5),
              2: FlexColumnWidth(1.2),
              3: FlexColumnWidth(1.2),
              4: FlexColumnWidth(1.1),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                ),
                children: [
                  Text("No"),
                  Text("Gambar"),
                  Text("Menu"),
                  Text("Harga"),
                  Text("Porsi"),
                ],
              ),
              for (int i = 0; i < menu.length; i++)
                TableRow(
                  children: [
                    Text("${i + 1}"),
                    Image.asset(
                      gambar[i],
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    Text(menu[i]),
                    Text("Rp ${harga[i]}"),
                    Text(porsi[i]),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
