import 'package:flutter/material.dart';
import 'package:flutter_food/models/food_item.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);
  static const routeName = '/foodDetail';

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as FoodItem;
    return Scaffold(
      appBar: AppBar(
        title: Text(arg.name),
      ),
      body: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset(
                  'assets/images/${arg.image}',
                ),
              ),
              //Icon(Icons.person),
              Text(
                'ชื่อเมนู: ${arg.name}',
                style: TextStyle(fontSize: 25.0),
              ),
              Text(
                'ราคา: ${arg.price} บาท',
                style: TextStyle(fontSize: 25.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}