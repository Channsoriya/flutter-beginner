import 'package:flutter/material.dart';
class line_cut extends StatelessWidget {
  const line_cut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity, 
     height: 10, 
     color: Colors.black.withOpacity(0.3),
    );
  }
}