import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/shoe_tile.dart';
import 'package:flutter_application_1/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // searchbar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 208, 233, 246),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
              ),
              Icon(Icons.search),
            ],
          ),
        ),

        // message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'Just Keep Connecting The Dots!',
          ),
        ),

        // hotpicks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                  name: 'Sunset Orchid',
                  price: '12',
                  imagepath: 'lib/images/shoe3.jpg',
                  description:
                      'A shoe merging rich purple and warm orange, echoing a sunset'
                      's hues with floral grace, ideal for nature-inspired style aficionados.');
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
