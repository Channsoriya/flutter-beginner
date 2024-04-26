import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/Dashboard/view/Notifications.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/last_records.dart';
import '../component/list_of_account.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 222, 222),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Text(
                    'Dashboard',
                    style: GoogleFonts.acme(
                      fontSize: 30
                    ),
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to( const Notifications());
                        },
                        child: const Icon(
                          Icons.notifications,
                            size: 30,
                        ),
                      ),
                       const Positioned(
                        right: 5,
                        top: 2,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  )
                ],
              ),
             const SizedBox(
                height: 30,
              ),
              Text(
                'List of Account',
                style: GoogleFonts.acme(
                   fontSize: 20
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const [
                  list_of_account(
                    color: Color.fromARGB(255, 234, 103, 94),
                    title: 'Back Account',
                    money: '\$2500.00',
                    ),
                  list_of_account(
                    color: Color.fromARGB(255, 109, 192, 8),
                    title: 'Credit Account',
                    money: '\$1500.00',
                    ),
                   list_of_account(
                    color: Color.fromARGB(255, 55, 85, 193),
                    title: 'Cast',
                    money: '\$800.00',
                    ),
                ],
              ),
            const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(
                      horizontal: 20
                     ),
                     child: Container(
                      height: 120, 
                      decoration:const BoxDecoration(
                        color: Color.fromARGB(255, 249, 243, 243),
                        boxShadow: [
                        BoxShadow(
                          blurRadius: 0.2,
                          offset: Offset(0, 5),
                          color: Color.fromARGB(255, 143, 139, 139)
                        )
                        ],
                         borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                      ),
                  ),
                   ),
                  Container(
                    height: 110, 
                    decoration:const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "\$4800.00",
                            style: GoogleFonts.acme(
                              fontSize: 40,
                              color:const Color.fromARGB(255, 216, 141, 19),
                            ),
                          ),
                          Text(
                            'Total Balance',
                            style: GoogleFonts.acme(
                              fontSize: 20
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Last Records Overview",
                style: GoogleFonts.acme(
                   fontSize: 20
                ),
              ),
               const SizedBox(
                height: 20,
              ),
        Column(
          children:const [
          last_records(
            image: Icons.local_grocery_store_outlined,
            title: 'Groceries',
            discrition: 'Credit card',
            date: 'Today',
            money: '\$250.00',
            color1: Color.fromARGB(255, 144, 18, 85),
            color2: Colors.orange,
            color3: Colors.orange,
          ),
           last_records(
            image: Icons.dry_cleaning,
            title: 'clothes',
            discrition: 'Credit card',
            date: '24/10/2023',
            money: '\$100.00',
            color1: Color.fromARGB(255, 127, 59, 166),
            color2: Color.fromARGB(255, 77, 14, 129),
            color3: Color.fromARGB(255, 77, 14, 129),
          ),
           last_records(
            image: Icons.house,
            title: 'Retal',
            discrition: 'cash',
            date: '10/10/2023',
            money: '\$500.00',
            color1: Color.fromARGB(255, 114, 224, 246),
            color2: Color.fromARGB(255, 17, 151, 148),
            color3: Color.fromARGB(255, 17, 151, 148),
          ),
          ],
        ),
            ]
        ),
      ),
      ));
  }
}
