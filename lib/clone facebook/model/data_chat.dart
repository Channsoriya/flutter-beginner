import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/e-commerce/view/howe_screen.dart';

class ListChats {
  final String image,name,time,chats;
  Color? reply,noryply;
  Color? colors;
  ListChats({
    required this.image,
    required this.name,
    required this.time,
    required this.chats,
    this.colors ,
    this.noryply,
    this.reply
  });
}
List<ListChats> list_chats=[
  ListChats(
    image: 'assets/facebook/Yong Thean.jpg',
    name: 'Yong Thean',
    time: '2:20 PM',
    reply: null,
    chats: 'Yong Thean sent a voice message',
    colors: Color.fromARGB(255, 27, 198, 33)
     ),
    ListChats(
    image: 'assets/facebook/Deth CR.jpg',
    name: 'Deth CR',
    time: '1:00 PM',
    chats: 'You sent a voice message',
    colors: null,
    reply: Colors.green,
    noryply: null
     ),
   ListChats(
    image: 'assets/facebook/Sroeun Vathana.jpg',
    name: 'Sroeun Vathana',
    time: '1:00 AM',
    chats: 'Sroeun Vathana sent a voice mess..',
    colors: null,
    reply: null
     ),
    ListChats(
    image: 'assets/facebook/profile sabe.jpg',
    name: 'Saby',
    time: '04:00 PM',
    chats: 'You: I love you',
    colors: Color.fromARGB(255, 27, 198, 33),
    reply: colorsproduc,
    noryply: colorsproduc
   ),
  ListChats(
    image: 'assets/facebook/Rith.jpg',
    name: 'Rith Rith',
    time: '04:30 PM',
    chats: 'You: sent photo',
    colors: Color.fromARGB(255, 27, 198, 33),
    reply: colorsproduc,
    noryply: colorsproduc
     ),
  ListChats(
    image: 'assets/facebook/Khemra Horn.jpg',
    name: 'Khemra Horn',
    time: '1:20 PM',
    reply: null,
    chats: 'Khemra Horn sent a voice message',
    colors: Color.fromARGB(255, 27, 198, 33)
     ), 
  ListChats(
    image: 'assets/facebook/Chandy Chaet.jpg',
    name: 'Chandy Chaet',
    time: '00:00 PM',
    chats: 'You sent a voice message',
    colors: null,
    reply: Colors.green,
    noryply: null
     ),
];