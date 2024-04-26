import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'components/analytice_card_resuable.dart';

class Homework1 extends StatelessWidget {
  const Homework1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                DateFormat.MMMEd().format(DateTime.now()),
                style: GoogleFonts.acme(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.5)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Eno',
                  style: GoogleFonts.acme(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                  ),
                 const CircleAvatar(
                    radius: 30,
                     backgroundImage: NetworkImage('https://www.cen.com.kh/wp-content/uploads/2018/07/%5E36C679955268F069C5A2B5FAD8AEB2837066F7C5A7821E27F1%5Epimgpsh_fullsize_distr.jpg')
                  )
                ],
              ),
             const SizedBox(
                   height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Analytics",
                     style: GoogleFonts.acme(
                      fontSize: 25,
                      color: Colors.black,
                ),
                  ),
                  Text(
                    "Monthly",
                    style: GoogleFonts.acme(
                      fontSize: 25,
                      color: Colors.black,
                ),
                  )
                ],
              ),
              const SizedBox(
                   height: 20,
              ),
              Row(
                children: const [
                  analytice_card_reusable(
                    title: "Transactions",
                    icon: Icons.arrow_upward,
                    subtitle: 'Success',
                     number1: "97.7%",
                     number2: '20.237', 
                     color1: Color.fromARGB(255, 35, 13, 162)
                     ),
                       SizedBox(
                          width: 10,
                      ),
                     analytice_card_reusable(
                      title: "Transactions",
                      icon: Icons.arrow_upward,
                      subtitle: 'Success',
                      number1: "97.7%",
                      number2: '20.237', 
                      color1: Color.fromARGB(255, 192, 28, 203)
                      ),
                        // analytice_card_reusable(title: "slfl",icon: Icons.arrow_downward,),
                       SizedBox(
                          width: 10,
                      )  , 
                        analytice_card_reusable(
                          title: "Transactions",
                          icon: Icons.arrow_upward,
                          subtitle: 'Success',
                          number1: "97.7%",
                          number2: '20.237', 
                          color1: Color.fromARGB(255, 33, 32, 40)
                          ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ],
             ),
           ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                    borderRadius:const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      Text(
                        'Earnings',
                          style: GoogleFonts.acme(
                          fontSize: 25,
                          color: Colors.black
                          ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total balance',
                              style: GoogleFonts.acme(
                              fontSize: 20,
                              color: Colors.black.withOpacity(0.8)
                              ),
                          ),
                           Text(
                            "\$3,892.00",
                              style: GoogleFonts.acme(
                              fontSize: 25,
                              color: Colors.black
                              ),
                          ),
                         
                        ],
                      ),
                     const SizedBox(
                        height: 20,
                      ),
                       Container(
                        width: double.infinity,
                        height: 150,
                         decoration:const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Earning in",
                                    style: GoogleFonts.acme(
                                      fontSize: 25,
                                      color: Colors.black.withOpacity(0.8)
                                      ),
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                    onPressed: () {
                                      
                                    }, child: Text(
                                    "March",
                                    style: GoogleFonts.acme(
                                      fontSize: 25,
                                      color: Colors.blue.withOpacity(0.8)
                                      ),
                                  )),
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                  )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 Container(
                                 height: 70,
                                 width: 200, 
                                   child: Stack(
                                    children: [
                                      Positioned(
                                        right: 40,
                                        top: 25,
                                        child: Text(
                                            "+\$345",
                                            style: GoogleFonts.acme(
                                              fontSize: 25,
                                              color: Colors.black.withOpacity(0.5),
                                              ),
                                          ),
                                      ),
                                    Positioned(
                                      bottom: 0,
                                      child: Text(
                                      "\$3,892.00",
                                        style: GoogleFonts.acme(
                                        fontSize: 25,
                                        color: Colors.black
                                     ),
                                           ),
                                    ),
                                    ],
                                   ),
                                   ),
                                  Container(
                                    height: 80,
                                    width: 90,
                                    decoration:const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage('https://cdn-icons-png.flaticon.com/512/2821/2821670.png'
                                        ),
                                        fit: BoxFit.fill)
                                    ),
                                  )
                                ]
                              ),
                              
                            ],
                           ),
                           
                         ),
                          )
                     ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
