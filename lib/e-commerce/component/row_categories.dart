import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/e-commerce/component/shose.dart';
import 'package:flutter_app/e-commerce/view/view_product.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
    

class Row_categories extends StatefulWidget {
  const Row_categories({
    Key? key,
  }) : super(key: key);

  @override
  State<Row_categories> createState() => _Row_categoriesState();
}

class _Row_categoriesState extends State<Row_categories> {
  @override
  Widget build(BuildContext context) {
      bool isFavorited = false;
    Color colorsproduc=Color.fromARGB(255, 243, 240, 240);
    return Row(
     children: List.generate(listshose.length, (index) {
      var datalist=listshose[index];
      return InkWell(
        onTap: () {
          Get.to(ViewProduct(
            image: datalist.image, 
            image1: datalist.image1,
            image2: datalist.image2, 
            image3: datalist.image3,
            title: datalist.title,
            subtitle: datalist.subtitle,
            desciption:  datalist.desciption,
            price: datalist.price
            ),
            transition: Transition.rightToLeftWithFade
            );
        },
        borderRadius:const BorderRadius.all(
               Radius.circular(20)
             ),
        child: Container(
         margin:const EdgeInsets.all(8),
           height: 300, 
           width: 200,
           decoration: BoxDecoration(
             color: colorsproduc,
             borderRadius:const BorderRadius.all(
               Radius.circular(20)
             )
           ),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Stack(
                 children: [
                   Positioned(
                    left: 15, 
                    top: 15,
                     child: GestureDetector(
                      onTap: () {
                        setState(() {
                           isFavorited = !isFavorited;
                        });
                      },
                      child: isFavorited
                          ? const Icon(
                              CupertinoIcons.heart_fill,
                              color: Color(0xFFFF9307),
                            )
                          : const Icon(
                              CupertinoIcons.heart,
                            ),
                                     ),
                   ),
                   Transform.rotate(
                     angle: -0.5,
                     origin:const Offset(0, 30),
                     child: Container(
                     height: 150,
                     width: 190,
                     decoration: BoxDecoration(
                     image: DecorationImage(
                     image: AssetImage(datalist.image),
                     fit: BoxFit.cover
                     )
                      ),
                    ),
                   ),
                 ],
               ),
              const SizedBox(
                height: 20,
               ),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Expanded(
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                        Text(
                          datalist.title,
                          style: GoogleFonts.acme(
                            fontSize: 25
                          ),
                          maxLines: 1, 
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          datalist.subtitle,
                          style: GoogleFonts.acme(
                          fontSize: 20,
                          color: Colors.red,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '\$',
                              style: GoogleFonts.acme(
                                fontSize: 30,
                                color: Colors.red,
                                ),
                            ),
                            Text(
                              datalist.price,
                              style: GoogleFonts.acme(
                              fontSize: 20,
                              ),
                              )
                          ],
                        )
                    ],
                   ),
                 ),
               )
             ],
           ),
         ),
      );
     })
    );
  }
}