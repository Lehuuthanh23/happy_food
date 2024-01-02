import 'package:flutter/material.dart';
import 'package:happy_food/Wigets/Dish_Card.dart';

import '../models/dish.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

List<Dish> lstDish = [
  Dish(
      price: 45000,
      name: "Cơm trộn thịt bò",
      img: "assets/com_tron_bo.jpeg",
      detail: "Cơm + Thịt bò xào + Rau Nấm Củ",
      quantity: 0),
  Dish(
      price: 40000,
      name: "Cơm trộn thịt heo",
      img: "assets/com_tron_heo.jpeg",
      detail: "Cơm + Thịt heo bằm + Rau Nấm Củ",
      quantity: 0),
  Dish(
      price: 40000,
      name: "Cơm trộn thịt gà",
      img: "assets/com_tron_ga.jpeg",
      detail: "Gà sốt cay nhẹ + Trứng chiên + Rau Nấm Củ",
      quantity: 0),
  Dish(
      price: 45000,
      name: "Cơm cà ri gà xù",
      img: "assets/com_cari_ga.jpeg",
      detail: "Bột cà ri Hàn + Gà xù + Hành tây + Khoai tây",
      quantity: 0),
  Dish(
      price: 53000,
      name: "Cơm cà ri thịt bò",
      img: "assets/com_cari_bo.jpeg",
      detail: "Bột cà ri Hàn + Thịt bò xào + Hành tây + Khoai tây",
      quantity: 0),
  Dish(
      price: 55000,
      name: "Miến trộn hải sản",
      img: "assets/mien_tron_haisan.jpeg",
      detail: "Miến + Rau Củ + nấm + Trứng + tôm,mưc,chả cá",
      quantity: 0),
  Dish(
      price: 45000,
      name: "Miến trộn bò xào",
      img: "assets/mien_tron_bo.jpeg",
      detail: "Miến + Rau củ + Trứng chiên + Thịt bò",
      quantity: 0),
  Dish(
      price: 40000,
      name: "Miến trộn bò heo",
      img: "assets/mien_tron_heo.jpeg",
      detail: "Miến + Rau củ + Trứng chiên + Thịt heo",
      quantity: 0),
  Dish(
      price: 40000,
      name: "Miến trộn gà xù",
      img: "assets/mien_tron_ga.jpeg",
      detail: "Miến + Rau củ + Trứng chiên + Gà chiên xù",
      quantity: 0),
];

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HAPPY FOOD",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown.shade800,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: lstDish.map((dish) => Dish_Card(dish: dish)).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.brown.shade800,
        child: const Text(
          "Order",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
