import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewPost extends StatefulWidget {
  const ViewPost({
    super.key,
    required this.image,
    });
  final String image;
  @override
  State<ViewPost> createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Center(
           child: Image(
            image: AssetImage(widget.image),),
         )
    );
  }
}