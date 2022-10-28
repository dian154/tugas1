import 'package:flutter/material.dart';
// ignore: unused_import
import './Detailproduk.dart';

// ignore: camel_case_types
class BuatHalaman extends StatelessWidget {
  const BuatHalaman({superkey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      
      
      appBar: AppBar(title: const Text("Produck Listing")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const Detailproduk(
                  name: "SOMETHINC AHA7% BHA 1% AHA 3% WEEKLY PEELING SOLUTION",
                  description: "AHA 7%, BHA 1%, PHA 3% Weekly Peeling Solution",
                  price: 106000,
                  image: "jin.jpg",
                  star: 1,
                ),
              ));
            },

            
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name: "SOMETHINC AHA7% BHA 1% AHA 3% WEEKLY PEELING SOLUTION",
              description: "AHA 7%, BHA 1%, PHA 3% Weekly Peeling Solution",
              price: 106000,
              image: "jin.jpg",
              star: 1,
            ),
            
          ),
          
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Skincare2",
                      description: " Pixsel is the most featureful phone ever",
                      price: 63000,
                      image: "suga.jpg",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "SOMETHINC - 5% Niacinamide + Moisture Sabi Beet / Serum Mencerahkan Kulit 20 ml",
                description: " Pixsel is the most featureful phone ever",
                price: 63000,
                image: "suga.jpg",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "OMETHINC Level 1% Encapsulated Retinol 20mL",
                      description: "disguise fine wrinkles, help tighten skin, maintain youth & skin elasticity",
                      price: 140000,
                      image: "rm.jpg",
                      star: 3),
                ),
              );
            },
            child: ProductBox(
                name: "OMETHINC Level 1% Encapsulated Retinol 20mL",
                description: "disguise fine wrinkles, help tighten skin, maintain youth & skin elasticity",
                price: 140000,
                image: "rm.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Somethinc AHA BHA Peeling Solution Serum Somethinc Peeling 20 ml",
                      description:
                          "AHA BHA PHA Peeling solution Get rid of clogged pores for good!",
                      price: 115000,
                      image: "jimin.jpg",
                      star: 3),
                ),
              );
            },
            child: ProductBox(
                name: "Somethinc AHA BHA Peeling Solution Serum Somethinc Peeling 20 ml",
                description:
                    "AHA BHA PHA Peeling solution Get rid of clogged pores for good!",
                price: 115000,
                image: "jimin.jpeg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Somethinc Bakuchiol Skinpair Oil 20ml",
                      description: "A Natural + Vegan Alternative to Retinol, anti-iflammatory, Acne Care.",
                      price: 90000,
                      image: "v.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "Somethinc Bakuchiol Skinpair Oil 20ml",
                description: "A Natural + Vegan Alternative to Retinol, anti-iflammatory, Acne Care.",
                price: 90000,
                image: "v.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}


// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {superkey,
      required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}