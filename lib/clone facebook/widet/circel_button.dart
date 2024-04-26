import 'package:flutter/material.dart';
class circel_button extends StatelessWidget {
  const circel_button({
    Key? key,
    required this.iconcircel, 
  }) : super(key: key);
  final IconData iconcircel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CircleAvatar(
      radius: 20,
      backgroundColor: Colors.black.withOpacity(0.2),
      child: Icon(
          iconcircel,
        color: Colors.black,
      ),
           ),
    );
  }
}