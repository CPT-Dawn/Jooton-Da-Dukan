import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Cosmic Kicks',
        price: '₹6000',
        imagepath: 'lib/images/shoe3.jpg',
        description:
            'Step into the cosmos with Cosmic Kicks, where vibrant purple, orange, and lavender hues blend seamlessly for an out-of-this-world experience.'),
    Shoe(
        name: 'Blaze Boost',
        price: '₹5500',
        imagepath: 'lib/images/shoe4.jpg',
        description:
            'Energize your steps with the vibrant Blaze Boost sneakers, blending dynamic design with unmatched comfort for the ultimate active lifestyle.'),
    Shoe(
        name: 'Ocean Sprint',
        price: '₹5800',
        imagepath: 'lib/images/shoe5.jpg',
        description:
            'Dive into style and comfort with the Ocean Sprint sneakers, designed for those who embrace both speed and a splash of vibrant colors.'),
    Shoe(
        name: 'Fire Fusion',
        price: '₹6200',
        imagepath: 'lib/images/shoe2.jpg',
        description:
            'Ignite your run with the Fire Fusion sneakers, where bold colors meet cutting-edge design for an unstoppable athletic experience.'),
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
