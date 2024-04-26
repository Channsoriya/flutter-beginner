
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  final urlProduc="https://jsonplaceholder.typicode.com/posts";
  var _post=[];
  Future _getProduct()async{
    try {
       final  url=Uri.parse(urlProduc);
       final response=await http.get(url);
       //check status code for API
       //  print('product ${response.statusCode}');
       if(response.statusCode==200){
        final listPost=jsonDecode(response.body);
          setState(() {
            _post=listPost;
          });
        }else{
          print('Erorr');
        }
    } catch (e) {
      print('sdflsdn $e');
    }
  }
  @override 
  void initState() {
    _getProduct();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: ListView.builder(
        itemCount: _post.length,
        itemBuilder: (context, index) {
          var post=_post[index];
       return  Card(
         child: ListTile(
                 title: Text(post['title']),
            ),
       );
        },),
    );
  }
}