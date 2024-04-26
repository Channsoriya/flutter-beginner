import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/clone%20facebook/model/data_add_frient.dart';
import 'package:flutter_app/e-commerce/view/howe_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widet/circel_button.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}
List<String> listmenu=[
   'សំណើជាមិត្តភ័ក្ត',
   'មិត្តភក្តិរបស់អ្នក',
   'មិត្តភក្តិជិតស្និត'
];
int addindex=0;
bool addfrien=true;
class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title:Text(
                'មិត្តភក្តិ',
                style: GoogleFonts.notoSerifKhmer(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
            actions:const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: circel_button(iconcircel:  Icons.search,),
                )
            ],
    ),
     body: SingleChildScrollView(
       child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                       Row(
                    children: List.generate(listmenu.length, (index){
                      return Container(
                        margin:const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10
                        ),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.2),
                              borderRadius:const BorderRadius.all(
                                Radius.circular(20)
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              listmenu[index], 
                              style: GoogleFonts.notoSerifKhmer(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                      );
                    })
                   ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10
                ),
                child: Text(
                  'មនុស្សដែលអ្នកប្រហែលជាស្គាល់',
                  style: GoogleFonts.notoSerifKhmer(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                  ),
              ),
              Column(
                children: List.generate(list_add_frient.length, (index) {
                  var datalist=list_add_frient[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                           CircleAvatar(
                            radius: 55,
                            backgroundImage: AssetImage(datalist.image),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                datalist.name,
                                style: GoogleFonts.acme(
                                  fontSize: 25
                                ),
                                ),
                              Row(
                                children: [
                                 Text(
                                  'មិត្តភក្តិ​ ${datalist.frientship} នាក់',
                                  style: GoogleFonts.acme(
                                  fontSize: 17
                                ),
                                  )
                                ],
                              ),
                             const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        addfrien=!addfrien;
                                      });
                                    },
                                    child:addfrien==true? Container(
                                      decoration:const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10)
                                        )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 10
                                        ),
                                        child: Text(
                                          'បញ្ចូលមិត្តភក្តិ',
                                          style: GoogleFonts.notoSansKhmer(
                                            fontSize: 20,
                                            color: Colors.white
                                          ),
                                          ),
                                      )):Container(
                                        decoration: BoxDecoration(
                                       color: Colors.black.withOpacity(0.1),
                                       borderRadius:const BorderRadius.all(
                                        Radius.circular(10)
                                      )
                                    ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 90, 
                                            vertical: 10
                                          ),
                                          child: Text(
                                            'បោះបង់',
                                               style: GoogleFonts.notoSansKhmer(
                                              fontSize: 20,
                                              color: Colors.black
                                            ),
                                          ),
                                        ),
                                      ),
                                  ),
                                  const SizedBox(
                                      width: 10,
                                    ),
                                 addfrien==true? InkWell(
                                  onTap: () {
                                    setState(() {
                                     addindex=index;
                                     list_add_frient.removeAt(addindex);
                                    });
                                  },
                                   child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.1),
                                        borderRadius:const BorderRadius.all(
                                          Radius.circular(10)
                                        )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 10
                                        ),
                                        child: Text(
                                          'យកចេញ',
                                           style: GoogleFonts.notoSansKhmer(
                                            fontSize: 20,
                                            color: Colors.black
                                          ),
                                          ),
                                      )),
                                 ):Container()
                                ],
                              )
                            ],
                          )
                      ],
                    ),
                  );
                }),
              )
              ],
            ),
          ),
        ],
       ),
     ),
   );
  }
}

  