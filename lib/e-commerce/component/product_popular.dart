import 'package:flutter/material.dart';
import 'package:flutter_app/e-commerce/component/list_popular.dart';
import 'package:flutter_app/e-commerce/view/view_product.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class popular_product extends StatelessWidget {
  const popular_product({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color colorsproduc=const Color.fromARGB(255, 243, 240, 240);
    return Column(
     children: List.generate(listpopular.length, (index) {
      var datapopular=listpopular[index];
       return Padding(
         padding:const EdgeInsets.symmetric(
         horizontal: 15,
         vertical: 10
       ),
         child: InkWell(
          onTap: () {
            Get.to(ViewProduct(
              image: datapopular.image, 
              image1: datapopular.image1,
              image2: datapopular.image2,
              image3: datapopular.image3,
              title: datapopular.title, 
              subtitle: datapopular.subtitle,
              desciption: datapopular.desciption,
              price: datapopular.price),
               transition: Transition.rightToLeftWithFade
              );
          },
           child: Container(
             height: 150, 
             decoration: BoxDecoration(
               color: colorsproduc,
               borderRadius:const BorderRadius.all(
                 Radius.circular(20)
               )
             ),
             child: Stack(
               children: [
                const Positioned(
                   top: 20,
                   right: 20,
                   child: Icon(
                     Icons.favorite_border
                   ),
                 ),
                 Row(
                 children: [
                   Container(
                     margin:const EdgeInsets.all(10),
                     width: 150,
                     decoration:  BoxDecoration(
                        borderRadius:const BorderRadius.all(
                         Radius.circular(20)
                       ),
                       image: DecorationImage(
                         image: AssetImage(datapopular.image),
                         fit: BoxFit.cover
                       )
                     ),
                   ),
                   Expanded(
                     child: Padding(
                       padding:const EdgeInsets.only(
                        top: 50, 
                        bottom: 15
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text(
                             datapopular.title,
                             style: GoogleFonts.acme(
                               fontSize: 25,
                               color: Colors.black.withOpacity(0.7),
                             ),
                           ),
                         Row(
                          children: [
                            Text(
                              '\$',
                              style: GoogleFonts.acme(
                               fontSize: 30,
                               color: Colors.red
                             ),
                            ),
                              Text(
                             datapopular.price,
                             style: GoogleFonts.acme(
                               fontSize: 25,
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
               ],
             ),
           ),
         ),
       );
     }),
    );
  }
}
