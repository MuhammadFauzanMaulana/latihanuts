import 'package:flutter/material.dart';

import 'detail_grid.dart';
// import 'package:flutter_basic/detail_grid.dart';

class PageCustomeGrid extends StatefulWidget {
  const PageCustomeGrid({super.key});

  @override
  State<PageCustomeGrid> createState() => PageCustomeGridState();
}

class PageCustomeGridState extends State<PageCustomeGrid> {
  List<Map<String, dynamic>> listMovie = [
    {
      "judul": "ANNETTE",
      "gambar": "gmbr1.jpg",
      "harga": 40000,
    },
    {
      "judul": "SPECIAL26",
      "gambar": "gmbr2.jpg",
      "harga": 31000,
    },
    {
      "judul": "MONSTER HOUSE",
      "gambar": "gmbr3.jpg",
      "harga": 56000,
    },
    {
      "judul": "LEAGUE",
      "gambar": "gmbr4.jpg",
      "harga": 47000,
    },
    {
      "judul": "ALADDIN",
      "gambar": "gmbr5.jpg",
      "harga": 32000,
    },
    {
      "judul": "PELANGI",
      "gambar": "gmbr6.jpeg",
      "harga": 41000,
    },
    {
      "judul": "Jalan yang jauh jangan lupa pulang",
      "gambar": "gmbr7.jpeg",
      "harga": 48000,
    },
    {
      "judul": "Keluarga cemara 2",
      "gambar": "gmbr8.jpeg",
      "harga": 33000,
    },
    {
      "judul": "Warkop DKI",
      "gambar": "gmbr9.jpeg",
      "harga": 52000,
    },
    {
      "judul": "Sang Pemimpi",
      "gambar": "gmbr10.jpeg",
      "harga": 43000,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custome Grid"),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.builder(
          itemCount: listMovie.length,
          gridDelegate: const
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            DetailGrid(listMovie[index])));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridTile(
                    footer: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color:
                          Colors.black)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${listMovie[index]["judul"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text("Rp. ${listMovie[index]["harga"]}")
                        ],
                      ),
                    ),
                    child:
                    Image.asset("gambar/${listMovie[index]["gambar"]}")),
              ),
            );
          }),
    );
  }
}

