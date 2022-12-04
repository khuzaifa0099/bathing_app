

import '../screens/home/class.dart';

final List<String> image= [
  "assets/images/g1.png",
  "assets/images/g2.png",
  "assets/images/g3.png",
];
List name_title= [
  "Luxe bath house",
  "Axis bath house",
  "Vip Bath house",

];
List des = [
  "Luxe bath house is the best bath near your home.",
  "Axis bath house house is the best bath near your home.",
  "Vip bath house house is the best bath near your home.",

];
List price_title= [
  "\$ 100 Per Day",
  "\$ 100 Per Day",
  "\$ 100 Per Day",
];
List arrow_icon = [
  "assets/images/arrow_icon.png",
  "assets/images/arrow_icon.png",
  "assets/images/arrow_icon.png",

];




final List<CategoriesModel> catogriies = List.generate(
    image.length,
        (index) => CategoriesModel(
          '${image[index]}',
          '${name_title[index]}',
          '${des[index]}',
          '${price_title[index]}',
          '${arrow_icon[index]}',

    )
);