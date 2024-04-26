import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/clone%20facebook/model/data%20story.dart';
import 'package:flutter_app/clone%20facebook/model/data_chat.dart';
import 'package:flutter_app/e-commerce/view/howe_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widet/circel_button.dart';

class MessagerPage extends StatefulWidget {
  const MessagerPage({super.key});

  @override
  State<MessagerPage> createState() => _MessagerPageState();
}
class _MessagerPageState extends State<MessagerPage> {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading:const CircleAvatar(
            backgroundColor: Colors.white,
            child: circel_button(iconcircel: Icons.menu)),
          title: Text(
            'Chats',
            style: GoogleFonts.acme(
              fontSize: 30,  
              color: Colors.black
            ),
          ),
          actions:const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: circel_button(iconcircel: Icons.edit),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
               Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                    ),
                    child: Container(
                  height: 50,
                    decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(35)
                  )
                    ),
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search',
                        style: GoogleFonts.acme(
                          fontSize: 20
                        ),
                      )
                    ],
                  ),
                    ),
                    ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(list_story.length, (index){
                        var data=list_story[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                radius: 35,
                               backgroundImage: AssetImage(data.profile),
                              ),
                             const Positioned(
                                right: 0,
                                bottom: 1,
                                child: CircleAvatar(
                                  radius: 10, 
                                  backgroundColor: Color.fromARGB(255, 27, 198, 33),
                                )
                                )
                              ]
                            ),
                            Text(
                              data.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                        
                              ),
                            )
                              ],
                            )
                          );
                    }),
                  ),
                ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                children: List.generate(list_chats.length, (index){
                  var datachat=list_chats[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                          Stack(
                            children: [
                              CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(datachat.image),
                            ),
                            Positioned(
                              right: 0, 
                              bottom: 1,
                              child:datachat.colors==null?Container(): CircleAvatar(
                                radius: 10,
                                backgroundColor: datachat.colors,
                              )
                            )
                            ],
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                datachat.name,
                                style: GoogleFonts.acme(
                                  fontSize: 25
                                ),
                              ),
                           Row(
                             children: [
                               Text(
                                 datachat.chats,
                                 overflow: TextOverflow.ellipsis,
                                 style: GoogleFonts.acme(
                                 fontSize: 15, 
                               ),                               
                               ), 
                              const SizedBox(
                                width: 10,
                               ),
                               Text(
                                 datachat.time,
                               )
                             ],
                           )
                            ],
                          ),
                        ),
                        const Spacer(),
                        datachat.reply==null?Container(
                             
                        ):datachat.noryply==null?const CircleAvatar(
                          backgroundColor: Colors.black,
                            radius: 10,
                            child: Center(
                              child: Icon(
                                Icons.done,
                                size: 15,
                              ),
                            ),
                        ):CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(datachat.image),
                        )
                      ],
                    ),
                  );
                }),
               ),
             )
            ]
          ),
        ),
      ),
    );
  }
}