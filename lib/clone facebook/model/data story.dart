import 'package:flutter/material.dart';
class data_story {
  final String profile,name,image;
  data_story({
    required this.profile,
    required this.name,
    required this.image
  });
}

List<data_story> list_story=[
    data_story(
       profile: 'assets/facebook/Deth CR.jpg',
       name: 'Deth CR', 
       image: 'assets/facebook/Deth CR story.jpg'),
    data_story(
      profile: 'assets/facebook/tey story.jpg',
       name: 'ណា ស្រីតី', 
       image: 'assets/facebook/teypost.jpg'),
    data_story(
      profile: 'assets/facebook/Rith.jpg',
       name: 'RiTh RiTh', 
       image: 'assets/facebook/Rith.jpg'),
    data_story(
      profile: 'assets/facebook/Sroeun Vathana.jpg',
       name: 'Sroeun Vathana', 
       image: 'assets/facebook/Sroeun Vathana.jpg'),
   data_story(
      profile: 'assets/facebook/len.jpg',
       name: 'ហួន ស្រីឡែន', 
       image: 'assets/facebook/len story.jpg'),
];