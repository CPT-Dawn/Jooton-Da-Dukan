import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Sunset Orchid',
        price: '6000',
        imagepath: 'lib/images/shoe3.jpg',
        description:
            'A shoe merging rich purple and warm orange, echoing a sunset'
            's hues with floral grace, ideal for nature-inspired style aficionados.'),
    Shoe(
        name: 'Sunset Orchid',
        price: '6000',
        imagepath: 'lib/images/shoe3.jpg',
        description:
            'A shoe merging rich purple and warm orange, echoing a sunset'
            's hues with floral grace, ideal for nature-inspired style aficionados.'),
    Shoe(
        name: 'Sunset Orchid',
        price: '6000',
        imagepath: 'lib/images/shoe3.jpg',
        description:
            'A shoe merging rich purple and warm orange, echoing a sunset'
            's hues with floral grace, ideal for nature-inspired style aficionados.'),
    Shoe(
        name: 'Sunset Orchid',
        price: '6000',
        imagepath: 'lib/images/shoe3.jpg',
        description:
            'A shoe merging rich purple and warm orange, echoing a sunset'
            's hues with floral grace, ideal for nature-inspired style aficionados.'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
