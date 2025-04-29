enum PortionSize { small, medium, large }

class Menu {
  final String title;
  final String subtitle;
  final String mainCardSubtitle;
  final String description;
  final int likes;
  final String imagePath;
  final Map<PortionSize, double> prices;
  final double imageTopPadding;
  

  Menu({
    required this.title,
    required this.subtitle,
    required this.mainCardSubtitle,
    required this.description,
    required this.likes,
    required this.imagePath,
    required this.prices,
    this.imageTopPadding = 45,
  });
}

final List<Menu> menu = [

  Menu(
    title: 'Mogli’s Cup',
    subtitle: 'Strawberry ice cream',
    mainCardSubtitle: 'Strawberry ice cream that transports you to the beach',
    description: "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
    likes: 200,
    imagePath: 'assets/grafiken/cupkake_cat.png',
    prices: {
      PortionSize.small: 4.99,
      PortionSize.medium: 6.99,
      PortionSize.large: 8.99,
    },
    imageTopPadding: 30,
  ),
  Menu(
    title: 'Cupcake Chick',
    subtitle: 'Vanilla cupcake',
    mainCardSubtitle: "Vanilla cupcake perfect for kids both big and small",
    description: "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
    likes: 265,
    imagePath: 'assets/grafiken/cupcake_chick.png',
    prices: {
      PortionSize.small: 2.50,
      PortionSize.medium: 3.50,
      PortionSize.large: 4.50,
    },
    imageTopPadding: 30,
  ),
  Menu(
    title: 'Balu’s Cup',
    subtitle: 'Pistachio ice cream',
    mainCardSubtitle: "Pistachio ice cream perfect for a more refined pallet",
    description: "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
    likes: 200,
    imagePath: 'assets/grafiken/icecream_cone.png',
    prices: {
      PortionSize.small: 5.99,
      PortionSize.medium: 6.99,
      PortionSize.large: 8.99,
    },
    imageTopPadding: 30,
  ),
  Menu(
    title: 'Smiling David',
    subtitle: 'Chocolate ice cream',
    mainCardSubtitle: "Chocolcate ice cream. A classic for everyone",
    description: "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
    likes: 150,
    imagePath: 'assets/grafiken/icecream_stick.png',
    prices: {
      PortionSize.small: 2.99,
      PortionSize.medium: 3.49,
      PortionSize.large: 3.99,
    },
    imageTopPadding: 30,
  ),
  Menu(
    title: 'Kai in a Cone',
    subtitle: 'Vanilla ice cream',
    mainCardSubtitle: "Vanillia ice cream. A perfect ice cream",
    description: "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
    likes: 510,
    imagePath: 'assets/grafiken/icecream.png',
    prices: {
      PortionSize.small: 2.99,
      PortionSize.medium: 3.49,
      PortionSize.large: 3.99,
    },
    imageTopPadding: 30,
  ),

    Menu(
    title: "Angi's Yummy Burger",
    subtitle: 'Vegan burger',
    mainCardSubtitle: 'Delish vegan burger that tastes like heaven',
    description: "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
    likes: 320,
    imagePath: 'assets/grafiken/burger.png',
    prices: {
      PortionSize.small: 11.99,
      PortionSize.medium: 13.99,
      PortionSize.large: 15.49,
    },
    imageTopPadding: 30,
  ),
];

final List<Menu> recommendationMenu = [
  menu[0], // Mogli’s Cup
  menu[3], // Balu’s Cup
  menu[4], // Smiling David
  menu[5], // Kai in a Cone
];
