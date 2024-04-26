 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 
class analytice_card_reusable extends StatelessWidget {
  const analytice_card_reusable({
    Key? key, 
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.number1, 
    required this.number2,
    required this.color1
  }) : super(key: key);
  final String title,subtitle,number1,number2;
  final IconData icon;
  final Color color1;
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 180,
          width: 120,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.all(
              Radius.circular(10)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                      Icon(
                        icon,
                        color: Colors.green,
                      )
                     ],
                ),
                Text(
                  "97.7%",
                  style: GoogleFonts.acme(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
                Text(
                  "20.237",
                   style: GoogleFonts.acme(
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.5),
                ),
                ),
                  const SizedBox(
                    height: 10,
                ),
                                Row(
                  children: [
                    Container(
                  height: 4, 
                  width: 80,
                  decoration:const BoxDecoration(
                    color: Colors.white
                  ),
                ),
                Container(
                  height: 4, 
                  width: 18,
                  decoration:const BoxDecoration(
                    color: Color.fromARGB(255, 138, 17, 17)
                  ),
                )
                  ],
                ),
                const SizedBox(
                    height: 19,
                ),
                Text(
                  title,
                  style: GoogleFonts.acme(
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.5),
                ),
                ),
                Text(
                  "Success",
                   style: GoogleFonts.acme(
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.5),
                ),
                ),
              ],
            ),
          ),
        );
  }
}