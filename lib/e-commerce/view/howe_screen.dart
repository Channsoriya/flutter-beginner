
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/e-commerce/view/popular_producr_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/product_popular.dart';
import '../component/row_categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
Color colorsproduc=const Color.fromARGB(255, 243, 240, 240);
List listcotefories=[
'All','Shose','Clothes','Watches'
];
int current_menu=0;
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        elevation: 0,
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
           SizedBox(
              width: 20,
          ),
          Icon(
            Icons.notifications_active,
            color: Colors.black,
            size: 30,
          ),
           SizedBox(
              width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
           Padding(
             padding: const EdgeInsets.only(
              left: 16,
              bottom: 5
             ),
             child: Text(
             'Categories',
             style: GoogleFonts.acme(
                fontSize: 32,
              ),
             ),
           ),
           Row( 
            children: List.generate(listcotefories.length, (index) {
              var datalist=listcotefories[index];
              return Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      current_menu=index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: current_menu==index? Colors.red:Colors.white,
                          width: 4,
                        )
                      )
                    ),
                    child: Text(datalist,
                        style: GoogleFonts.acme(
                        fontSize: 20,
                        color: current_menu==index? Colors.red:Colors.black.withOpacity(0.4),
                        ),
                        ),
                  )
                ),
              );
            }),
           ),
          const SizedBox(height: 20,),
           const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Padding(
               padding: EdgeInsets.only(left: 8,right: 8),
               child: Row_categories(),
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(
              horizontal: 16
             ),
             child: Row(
               children: [
                 Text(
                  'Popular',
                  style: GoogleFonts.acme(
                    fontSize: 30
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Get.to(const PolularProductScreen());
                  },
                  child: Text(
                    'Show all',
                    style: GoogleFonts.acme(
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.5)
                    ),
                    ),
                )
               ],
             ),
           ),
           popular_product()
          ],
        ),
      ),
     
    );
  }
}
