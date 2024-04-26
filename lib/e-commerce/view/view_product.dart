import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/e-commerce/component/shose.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewProduct extends StatefulWidget {
   ViewProduct(
    {
    super.key,
    required this.image,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.title,
    required this.subtitle,
    required this.desciption,
    required this.price
    }
    );
  late String image,image1,image2,image3,price,title,subtitle,desciption;
  @override
  State<ViewProduct> createState() => _ViewProductState();
}

 List<String> listcontry=[
    'US','UK','EU'
    ];
  List listsize=[
   '5','5.5','6','6.6','7','7.7','8','8.8','9','9.5','10'
  ];
  List<Color> listcolor=[
    Colors.red,Colors.amber,Colors.green,Colors.orange,Colors.blue
  ];
  int curreninex=0;
  int currensize=0;
  int currencolor=0;
class _ViewProductState extends State<ViewProduct> {
  @override

  Color colorsproduc=const Color.fromARGB(255, 243, 240, 240);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 400, 
              decoration: BoxDecoration(
                color: colorsproduc,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.back();
                              },icon:const Icon(
                                Icons.keyboard_backspace
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.favorite_border,
                            )
                          ],
                        ),
                      Center(
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 240,
                                decoration: BoxDecoration(
                                   image: DecorationImage(
                                    image: AssetImage(widget.image),
                                    fit: BoxFit.cover
                                    )
                                ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 InkWell(
                                  onTap: () {
                                    setState(() {
                                      
                                    });
                                  },
                                  child: Container(
                                    height: 80 ,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                      image: AssetImage(widget.image1)
                                      )
                                    ),
                                  ),
                                ),
                                 InkWell(
                                  onTap: () {
                                    setState(() {
                                      
                                    });
                                  },
                                  child: Container(
                                    height: 80 ,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                      image: AssetImage(widget.image2)
                                      )
                                    ),
                                  ),
                                ),
                                 InkWell(
                                  onTap: () {
                                    setState(() {
                                      
                                    });
                                  },
                                  child: Container(
                                    height: 80 ,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                      image: AssetImage(widget.image3),
                                      fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                ),
                              ]
                            )
                          ],
                        ),
                      )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                       Text(
                        'Men`s Shose',
                        style: GoogleFonts.acme(
                              fontSize: 20,
                              color: Colors.black.withOpacity(0.5)
                            ),
                      ),  
                    ],
                  ),
                  const SizedBox(
                  height: 20,
                  ),
                  Row(
                    children: [
                       Text(
                        widget.title,
                        style: GoogleFonts.acme(
                              fontSize: 30
                            ),
                      ),
                      const Spacer(),
                       Row(
                        children: [
                          Text(
                            '\$',
                            style: GoogleFonts.acme(
                              color:const Color.fromARGB(255, 194, 151, 21),
                              fontSize: 35
                            ),
                          ),
                          Text(
                            widget.price,
                            style: GoogleFonts.acme(
                              fontSize: 30
                            ),
                          )
                        ],
                       )
                    ],
                  ),
                  const SizedBox(
                  height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Size',
                        style: GoogleFonts.acme(
                          fontSize: 20
                        ),
                      ),
                     const Spacer(),
                      Row(
                        children: List.generate(listcontry.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    curreninex=index;
                                  });
                                },
                                child: Text(
                                  listcontry[index], 
                                  style: GoogleFonts.acme(
                                     color: curreninex==index?Colors.black:Colors.black.withOpacity(0.7),
                                     fontWeight: curreninex==index?FontWeight.bold:null,
                                     fontSize: 20
                                  ),
                                ),
                              ),
                            );
                        })
                      ),
       
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(listsize.length, (index) {
                        return InkWell(
                           borderRadius: const BorderRadius.all(
                                Radius.circular(10)
                              ),
                          onTap: () {
                            setState(() {
                              currensize=index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: currensize==index?Colors.black:Colors.black.withOpacity(0.3),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10)
                              )
                            ),
                            margin:const EdgeInsets.all(10),
                                child: Padding(
                                  padding:  const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10
                                  ),
                                  child: Text(
                                   listsize[index], 
                                   style: GoogleFonts.acme(
                                    color: currensize==index?Colors.white:Colors.black,
                                    fontSize: 20
                                   ),
                                  ),
                                ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    'Colors',
                    style: GoogleFonts.acme(
                      fontSize: 30
                    ),
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: List.generate(listcolor.length, (index) {
                      return CircleAvatar(
                      radius: 25,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black.withOpacity(0.05),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                currencolor=index;
                              });
                            },
                            child: CircleAvatar(
                               radius: 15,
                               backgroundColor: listcolor[index],
                              child: Icon(
                                currencolor==index?Icons.done_outline:null
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  )
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: GoogleFonts.acme(
                      fontSize: 30
                    ),
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                  Text(
                     widget.desciption,
                     style: GoogleFonts.acme(
                      fontSize: 20, 
                      color: Colors.black.withOpacity(0.4)
                     ),
                  )
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