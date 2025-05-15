final List<String> lampTypes = [
  'All',
  'Buffet',
  'Torchiere',
  'Desk',
  'Floor',
  'Pendant',
  'Chandelier',
  'Wall',
];

class Lamp {
  final String name;
  final String imageUrl;
  final double price;
  final double rating;

  Lamp({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });
}

final List<Lamp> lampList = [
  Lamp(
    name: 'Modern Desk Lamp',
    imageUrl:
        'https://www.visualcomfort.com/media/catalog/product/t/o/tob5014habaw.png?optimize=medium&fit=bounds&height=855&width=855&canvas=855:855',
    price: 39.99,
    rating: 4.5,
  ),
  Lamp(
    name: 'Vintage Floor Lamp',
    imageUrl:
        'https://cdn11.bigcommerce.com/s-fc723/images/stencil/1280x1280/products/4451/18343/001-B-Black_E27_Pendant_Lamp-Sembawang_Lighting_House__18478.1728550830.png?c=2',
    price: 89.50,
    rating: 4.7,
  ),
  Lamp(
    name: 'Minimalist Pendant',
    imageUrl: 'https://www.akway.in/cdn/shop/files/14a.webp?v=1706242359',
    price: 59.00,
    rating: 4.3,
  ),
  Lamp(
    name: 'Classic Chandelier',
    imageUrl:
        'https://muutofrontdoor-akcxchhkcjbdg3gx.a03.azurefd.net/digitalassets/Fluid_small-high-res_8.png',
    price: 149.99,
    rating: 4.9,
  ),
  Lamp(
    name: 'Wall Mounted Light',
    imageUrl:
        'https://www.knockonwoodcreation.com/cdn/shop/products/IMG_3517-Edit-Edit_4093a8a4-e706-4482-ab3a-573399b19ba0.png?v=1633523774',
    price: 29.99,
    rating: 4.1,
  ),
];
