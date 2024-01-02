import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:happy_food/models/dish.dart';

class Dish_Card extends StatefulWidget {
  const Dish_Card({super.key, required this.dish});
  final Dish dish;

  @override
  State<Dish_Card> createState() => _Dish_CardState();
}

class _Dish_CardState extends State<Dish_Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
        width: MediaQuery.of(context).size.width,
        color: Colors.amber.shade800,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Image.asset(widget.dish.img)),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dish.name,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.dish.price.toString(),
                  ),
                  Text(
                    widget.dish.detail,
                    style: const TextStyle(fontSize: 10),
                  ),
                  Text("Tổng: ${widget.dish.quantity * widget.dish.price}")
                ],
              ),
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        widget.dish.quantity++;
                      });
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    child: const Text("Thêm")),
                TextButton(
                    onPressed: () {
                      setState(() {
                        if (widget.dish.quantity > 0) {
                          widget.dish.quantity--;
                        }
                      });
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    child: const Text("Giảm")),
                Text("SL: ${widget.dish.quantity.toString()}"),
              ],
            )
          ],
        ));
  }
}
