import 'package:navigation_for_practice/utils/colors.dart';

class Catalogue {
  final String? name;
  final String? image;

  Catalogue({this.name, this.image});
}

final catalogue = [
  Catalogue(
      name: 'Women\'s Fashion',
      image:
          'https://images.unsplash.com/photo-1564463836257-f028d0ff4446?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  Catalogue(
      name: 'Men\'s Fashion',
      image:
          'https://images.unsplash.com/photo-1527010154944-f2241763d806?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80'),
  Catalogue(
      name: 'Phones',
      image:
          'https://images.unsplash.com/photo-1585060514873-fe2710180762?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1179&q=80'),
  Catalogue(
      name: 'Computers',
      image:
          'https://images.unsplash.com/photo-1485988412941-77a35537dae4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1196&q=80'),
  Catalogue(
      name: 'Smart home',
      image:
          'https://images.unsplash.com/photo-1528255671579-01b9e182ed1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80'),
  Catalogue(
      name: 'Arts & Crafts',
      image:
          'https://images.unsplash.com/photo-1596464716127-f2a82984de30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  Catalogue(
      name: 'Baby',
      image:
          'https://images.unsplash.com/photo-1491013516836-7db643ee125a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80'),
  Catalogue(
      name: 'Sports',
      image:
          'https://images.unsplash.com/photo-1587280501635-68a0e82cd5ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
];

class Featured {
  final String? image_url;
  final String? title;
  final bool? isFavorite;
  final bool? sale;
  final double? percentOff;
  final double? price;

  Featured({
    this.image_url,
    this.title,
    this.isFavorite,
    this.sale,
    this.percentOff,
    this.price,
  });
}

final feature = [
  Featured(
    image_url:
        'https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=705&q=80',
    title: 'Saodimallsu Womens Turtleneck Oversized...',
    isFavorite: false,
    sale: true,
    percentOff: 50,
    price: 49,
  ),
  Featured(
    image_url:
        'https://images.unsplash.com/photo-1497339100210-9e87df79c218?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    title: 'Astylish Women Open Front Long Sleeve Ch...',
    isFavorite: true,
    sale: false,
    percentOff: 0,
    price: 89.99,
  ),
  Featured(
    image_url:
        'https://images.unsplash.com/photo-1620799140188-3b2a02fd9a77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1072&q=80',
    title: 'ECOWISH Womens Color Block Striped Draped K...',
    isFavorite: false,
    sale: false,
    percentOff: 0,
    price: 102.33,
  ),
  Featured(
    image_url:
        'https://images.unsplash.com/photo-1603252109303-2751441dd157?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    title: 'Angashion Women\'s Sweaters Casual Long...',
    isFavorite: false,
    sale: false,
    percentOff: 0,
    price: 132.98,
  ),
];

final fashion_images = [
  'https://images.unsplash.com/photo-1583316174775-bd6dc0e9f298?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1584093091778-e7f4e76e8063?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1445205170230-053b83016050?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
  'https://images.unsplash.com/photo-1561052967-61fc91e48d79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
];

final clothes_categories = [
  'All',
  'Dresses',
  'Tops',
  'Sweaters',
  'Jeans',
  'Pants',
  'Skirts',
  'Shorts',
  'Leggings'
];

final item_colors = [
  AppColor.primaryDark,
  AppColor.lightRed,
  AppColor.green,
  AppColor.blue,
  AppColor.purple,
  AppColor.yellow,
];

final item_sized = ['XXS', 'XS', 'S', 'M', 'L', 'XL'];

final item_colors_image = [
  'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
  'https://images.unsplash.com/photo-1441986300917-64674bd600d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1523381294911-8d3cead13475?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1537274942065-eda9d00a6293?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
];

final delivery_method_list = [
  'https://1000logos.net/wp-content/uploads/2018/08/DHL-Logo-500x281.png',
  'https://www.fedex.com/content/dam/fedex-com/logos/FedEx-Logo.png',
  'https://www.tcsexpress.com/Assets/images/Logo.png'
];
