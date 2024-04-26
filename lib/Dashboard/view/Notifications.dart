import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../component/list_tile.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 226, 222, 222),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20, 
            right: 10, 
            left: 10, 
            bottom: 10
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black,
                  ),
                  Text(
                    'Dashboard',
                    style: GoogleFonts.acme(
                      fontSize: 30
                    ),
                  ),
                  const Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView(
                  children: [
                    const list_tle(),
                    const list_tle(),
                    const list_tle(),
                    const list_tle(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20
                      ),
                      child: Container(
                        height: 140 ,
                       decoration:const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/images/groceries.png'),
                                  radius: 50,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(
                                    'You received a payment of\n \$120.00from Jhon Smith',
                                    style: GoogleFonts.acme(
                                      fontSize: 20
                                    ),
                                  ),
                                  const Text(
                                    '12:20 PM'
                                  )
                                ],
                              ),
                            )
                          ],
                         ),
                       ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
