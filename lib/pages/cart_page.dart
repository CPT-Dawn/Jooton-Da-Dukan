import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  shoe individualShoe = value.getUserCart()[index];
                  return CartItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
