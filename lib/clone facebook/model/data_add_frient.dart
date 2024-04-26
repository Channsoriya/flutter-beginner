import 'package:flutter/material.dart';
class DataAddFrient {
   String image,name;
   int? frientship;
  DataAddFrient({
    required this.image,
    required this.name,
    required this.frientship,
  });
}
List<DataAddFrient> list_add_frient=[
    DataAddFrient(
      image: 'assets/facebook/Yong Thean.jpg', 
      name: "Yong Thean ", 
      frientship: 192, 
     ),
     DataAddFrient(
      image: 'assets/facebook/Khemra Horn.jpg', 
      name: "Khemra Horn", 
      frientship: 122, 
     ),
     DataAddFrient(
      image: 'assets/facebook/Theara Yun.jpg', 
      name: "Theara Yun ", 
      frientship: 33, 
     ),
     DataAddFrient(
      image: 'assets/facebook/Chandy Chaet.jpg', 
      name: "Chandy Chaet ", 
      frientship: 220, 
     ),
     DataAddFrient(
      image: 'assets/facebook/Rith.jpg', 
      name: "Rith Rith", 
      frientship: 10, 
     ),
];