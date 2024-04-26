import 'dart:ui';

import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/clone%20facebook/tabbar_view/menu.dart';
import 'package:flutter_app/clone%20facebook/tabbar_view/shop.dart';
import 'package:flutter_app/clone%20facebook/tabbar_view/tv.dart';
import 'package:flutter_app/clone%20facebook/view/messager.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../tabbar_view/group.dart';
import '../tabbar_view/home_facebook.dart';
import '../widet/circel_button.dart';

class HomePageFacebook extends StatefulWidget {
  const HomePageFacebook({super.key});

  @override
  State<HomePageFacebook> createState() => _HomePageFacebookState();
}
 int indextabbar=0;
  GlobalKey<ContainedTabBarViewState> _key = GlobalKey();
class _HomePageFacebookState extends State<HomePageFacebook> {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold( 
        appBar: indextabbar==0?AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Facebook',
          style: GoogleFonts.acme(
            fontSize: 40, 
            color: Colors.blue
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
               const circel_button(iconcircel: Icons.search),
               const SizedBox(
               width: 15,
               ),
               InkWell(
                onTap: () {
                  Get.to( const MessagerPage());
                },
                 child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black.withOpacity(0.2),
                   child: const CircleAvatar(
                    radius: 10,
                     backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/facebook/meassger.png'),
                   ),
                 ),
               )
              ],
            ),
          )
        ],
        elevation: 0,
       ):null,
      body: ContainedTabBarView(
        key: _key,
        initialIndex: indextabbar,
        tabBarProperties: TabBarProperties(
        labelColor: Colors.blue,
        indicatorColor: Colors.blue,
        indicatorWeight: 4,
        unselectedLabelColor: Colors.black,
              background: Container(
                decoration:const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black
                  ),
                  
                )
                ),
              ),
              position: TabBarPosition.top,
            ),
        onChange: (Value) {
          setState(() {
            indextabbar=Value;
          });
        },
        tabs:const [
          Tab(
          icon: Icon(
            Icons.home,
          ),
         ),
           Tab(
          icon: Icon(
            Icons.tv,
          ),
         ),
          Tab(
          icon: Icon(
            Icons.group,
          ),
         ),
         Tab(
          icon: Icon(
            Icons.shop_sharp,
          ),
         ),
         Tab(
          icon: Icon(
            Icons.menu,
          ),
         )
        ],
   
        views:const [
          HomeFacebook(),
          TvPage(),
          GroupPage(),
          ShopPage(),
          MenuPage()
        ],
      ),
     ),
   );
  }
}