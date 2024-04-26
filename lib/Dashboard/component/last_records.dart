import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class last_records extends StatelessWidget {
  const last_records({
    Key? key,
    required this.image,
    required this.title,
    required this.discrition,
    required this.date,
    required this.money,
    required this.color1,
    required this.color2,
    required this.color3
  }) : super(key: key);
  final String title,discrition,date,money;
  final IconData image;
  final Color color1,color2,color3;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
              left: 40
            ),
            child: ClipRRect(
              borderRadius:const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 95, 
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 20,
                    top: 20,
                    bottom: 20
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                              style: GoogleFonts.acme(
                                fontSize: 25
                              ),
                          ),
                          Text(
                            discrition,
                            style: GoogleFonts.acme(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.4)
                              ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            date,
                              style: GoogleFonts.acme(
                                fontSize: 20,
                                color: Colors.black.withOpacity(0.4)
                              ),
                          ),
                          Text(
                            money,
                            style: GoogleFonts.acme(
                                fontSize: 20,
                                color: color3
                              ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            child: ClipRRect(
              borderRadius:const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 75,
                width: 75,
                 decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    colors: [
                      color2,
                      color1,
                    ]
                  )
                 ),
                child: Center(
                  child: Container(
                    height: 55, 
                    width: 55, 
                    child: Center(
                      child: Icon(image,color: Colors.white,size: 60,),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
    );
  }
}
