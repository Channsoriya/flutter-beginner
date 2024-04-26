// ignore_for_file: non_constant_identifier_names

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

class ApiFutureBuilder extends StatefulWidget {
  const ApiFutureBuilder({super.key});

  @override
  State<ApiFutureBuilder> createState() => _ApiFutureBuilderState();
}

class _ApiFutureBuilderState extends State<ApiFutureBuilder> {
  Future <List<post>> _getDataApi() async{
  try {
  final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if(response.statusCode==200){
    var listpost=jsonDecode(response.body);
    return listpost.map((e) => post.fromJson(e)).toList();
  }else{
     throw Exception('eroor');
  }
  } catch (e) {
    throw Exception(e);
  }

} 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: FutureBuilder<List<post>>(
      future: _getDataApi(),
      builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting){
          return  const Center(
                 child: CircularProgressIndicator(),
                 );
        }else{
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
             final Post=snapshot.data![index];
             return ListTile(
                  title: Text(Post.title!),
                  subtitle: Text(Post.body!),
              );
            },);
        }
      },),
    );
  }
}