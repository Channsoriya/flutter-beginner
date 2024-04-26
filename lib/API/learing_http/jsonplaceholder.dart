
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart'as http;
class post {
  int? userId;
  int? id;
  String? title;
  String? body;

  post({this.userId, this.id, this.title, this.body});

  post.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}

class TestAPI extends StatefulWidget {
  const TestAPI({super.key});
  @override
  State<TestAPI> createState() => _TestAPIState();
}
class _TestAPIState extends State<TestAPI> {
  List<post> _post=[];
  Future _getDataApi()async{
  try {
  final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if(response.statusCode==200){
    List listpost=jsonDecode(response.body);
    _post=listpost.map((e) => post.fromJson(e)).toList();
  }
  } catch (e) {
    
  }
  
} 
  @override
  void initState() {
   _getDataApi();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
        itemCount: _post.length,
        itemBuilder: (context, index) {
       var post=_post[index];
       return  Card(
         child: ListTile(
                 title: Text(post.title??''),
            ),
       );
        },),
    );
  }
}