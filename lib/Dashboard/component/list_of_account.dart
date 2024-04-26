import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class list_of_account extends StatelessWidget {
  const list_of_account({
    Key? key,
    required this.color,
    required this.title,
    required this.money
  }) : super(key: key);
   final Color color;
   final String title,money;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90, 
      width: 120, 
      decoration: BoxDecoration(
        color: color,
        borderRadius:const BorderRadius.all(
          Radius.circular(10)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 8,
          left: 8,
          top: 16, 
          bottom: 16
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.acme(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              money,
              style: GoogleFonts.acme(
                fontSize: 23,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}