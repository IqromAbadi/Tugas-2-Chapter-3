import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                _AppBar(),
                Expanded(
                  child: _Body(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

_AppBar() {
  return Container(
    width: double.infinity,
    height: 90,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Stack(
      children: [
        Center(
          child: Text(
            "NEW RECIPE",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Positioned(
          right: 16,
          top: 40,
          bottom: 0,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              "Close",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

_Body() {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 75,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Super Cool you are creating a new recipe!\nLet's get started",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Give your recipe a name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Masukan nama menu"),
                ),
                SizedBox(height: 20),
                Text(
                  "Estimasi Waktu Memasak (menit)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextField(
                  decoration:
                      InputDecoration(labelText: "Masukan waktu pembuatan"),
                ),
                SizedBox(height: 20),
                Text(
                  "Deskripsi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(labelText: "Masukan deskripsi"),
                ),
                SizedBox(height: 20),
                Text(
                  "Resep, bahan dan langkah",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                      labelText: "Masukan resep dan cara pembuatan"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("ADD"),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    ),
  );
}
