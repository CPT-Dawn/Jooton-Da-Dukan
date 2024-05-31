import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 180,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // shoe photo
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagepath),
          ),
          // description

          Text(
            shoe.description,
          ),

          // price+detail of the shoe

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(shoe.name),
                  Text(shoe.price),
                ],
              ),
              Icon(Icons.add),
            ],
          ),
        ],
      ),
    );
  }
}
