import 'package:flutter/widgets.dart';

class Menu {
  final String title;
  final String subtitle;
  final String description;
  final String price;
  final String likes;
  final String imagePath;

  Menu({required this.title, required this.subtitle, required this.description, required this.price, required this.likes, required this.imagePath});
}

final List<Menu> menu = [
  Menu(
    title: 'Mogli’s Cup',
    subtitle: 'Strawberry ice cream',
    description: 'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
    price: '€8.99',
    likes: '200',
    imagePath: 'assets/grafiken/cupkake_cat.png'
  ),
  Menu(
    title: 'Angi’s Yummy Burger',
    subtitle: 'Vegan burger',
    description: 'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
    price: '€13.99',
    likes: '200',
    imagePath: 'assets/grafiken/burger.png'
  ),
  Menu(
    title: 'Cupcake Chick',
    subtitle: 'Vanilla cupcake',
    description: 'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
    price: '€4.50',
    likes: '200',
    imagePath: 'assets/grafiken/cupcake_chick.png'
  ),
  Menu(
    title: 'Balu’s Cup',
    subtitle: 'Pistachio ice cream',
    description: 'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
    price: '€8.99',
    likes: '200',
    imagePath: 'assets/grafiken/icecream_cone.png',
  ),
  Menu(
    title: 'Smiling David',
    subtitle: 'Chocolate ice cream',
    description: 'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
    price: '€3.99',
    likes: '200',
    imagePath: 'assets/grafiken/icecream_stick.png',
  ),
  Menu(
    title: 'Kai in a Cone',
    subtitle: 'Vanilla ice cream',
    description: 'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
    price: '€3.99',
    likes: '200',
    imagePath: 'assets/grafiken/icecream.png',
  ),
];


final List<Menu> recommendationMenu = [
  Menu(
    title: 'Mogli’s Cup',
    subtitle: 'Strawberry ice cream',
    description: 'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
    price: '€8.99',
    likes: '200',
    imagePath: 'assets/grafiken/cupkake_cat.png'
  ),
  Menu(
    title: 'Balu’s Cup',
    subtitle: 'Pistachio ice cream',
    description: 'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
    price: '€8.99',
    likes: '200',
    imagePath: 'assets/grafiken/icecream.png',
  ),
  Menu(
    title: 'Smiling David',
    subtitle: 'Chocolate ice cream',
    description: 'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
    price: '€3.99',
    likes: '200',
    imagePath: 'assets/grafiken/icecream_stick.png',
  ),
  Menu(
    title: 'Kai in a Cone',
    subtitle: 'Vanilla ice cream',
    description: 'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
    price: '€3.99',
    likes: '200',
    imagePath: 'assets/grafiken/icecream_cone.png',
  ),
];