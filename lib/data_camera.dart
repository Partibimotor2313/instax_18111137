import 'package:flutter/material.dart';

class DataCamera {
  String name;
  Color color;
  String price;
  String image;

  DataCamera({
    required this.name,
    required this.color,
    required this.price,
    required this.image,
  });
}

var listCamera = [
  DataCamera(
      name: "Mini Mint 7+",
      color: const Color(0xFF70b1a1),
      price: "\$49.90",
      image: "assets/images/InstaxMini7plus_Mint_R.png"),
  DataCamera(
      name: "Mini Blue 7+",
      color: const Color(0xFF77a0c6),
      price: "\$50.90",
      image: "assets/images/InstaxMini7plus_Blue_R.png"),
  DataCamera(
      name: "Mini Choral 7+ ",
      color: const Color(0xFFb0463c),
      price: "\$51.90 ",
      image: "assets/images/InstaxMini7plus_Choral_R.png"),
  DataCamera(
      name: "Mini Pink 7+",
      color: const Color(0xFFcf9496),
      price: "\$52.90",
      image: "assets/images/InstaxMini7plus_Pink_R.png"),
  DataCamera(
      name: "Mini Lavender 7+",
      color: const Color(0xFF855f8c),
      price: "\$53.90",
      image: "assets/images/InstaxMini7plus_Lavender_R.png"),
];
