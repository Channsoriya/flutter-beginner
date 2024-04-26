import 'package:flutter/material.dart';
import 'package:flutter_app/clone%20facebook/component/line_cut.dart';
import 'package:flutter_app/clone%20facebook/model/data_post.dart';
import 'package:flutter_app/clone%20facebook/view/view_post.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class all_post extends StatefulWidget {
  const all_post({
    Key? key,
  }) : super(key: key);

  @override
  State<all_post> createState() => _all_postState();
}
  int like=0;
  int comment=0;
  int share=0;
  bool currentshare=true;
  bool currntindex=true;
  bool cuurntcomment=true;
  bool follow=true;
class _all_postState extends State<all_post> {
  @override
  Widget build(BuildContext context) {
    return Column(
    children: List.generate(list_post.length, (index) {
      var data=list_post[index];
      like=data.like;
      return Container(
         width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                       CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(data.prodfile),
                      ),
                     const SizedBox(
                         width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width-86,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                   Text(
                                    data.name,
                                    style: GoogleFonts.acme(
                                      fontSize: 20
                                    ),
                                   ),
                                  const SizedBox(
                                    width:10,
                                   ),
                                   InkWell(
                                    onTap: () {
                                      setState(() {
                                        follow=!follow;
                                      });
                                    },
                                     child: Text(
                                      follow==true?'តាមដាន':'កំពុងតាមដាន',
                                      style: GoogleFonts.notoSerifKhmer(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color:follow==true? Colors.blue: Colors.black.withOpacity(0.5)
                                      ),
                                     ),
                                   ),
                                  ],
                                ),
                                Row(
                                  children:const [
                                    Icon(
                                      Icons.more_horiz,
                                      size: 30,
                                    ),
                                   SizedBox(
                                    width: 5,
                                   ),
                                    Icon(
                                      Icons.close,
                                      size: 30,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                         Row(
                          children: [
                            Text(
                             data.day
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.public,
                              size: 15,
                            )
                          ],
                         )
                        ],
                      ),
                    ],
                  ),
                ), 
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                  child: Text(
                    data.title,
                    style: GoogleFonts.acme(
                      fontSize: 20
                    ),
                  ),
                ),
              const  SizedBox(
                  height: 10,
                ),
                 InkWell(
                  onTap: () {
                    Get.to(ViewPost(image: data.image,));
                  },
                   child: Image(
                    image: AssetImage(data.image)
                    ),
                 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        '${currntindex==true?like:like+1} like',
                        style: GoogleFonts.acme(
                          fontSize: 20
                        ),
                       ),
                       Row(
                        children: [
                          Text(
                            'មតិ ${cuurntcomment==true? comment:comment+1}',
                            style: GoogleFonts.acme(
                            fontSize: 20
                          ),
                          ),
                          const SizedBox(
                             width: 5,
                          ),
                          Text(
                            'ចែករំលែក ${currentshare? share:share+1}',
                             style: GoogleFonts.acme(
                              fontSize: 20
                            ),
                          )
                        ],
                       )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     width: double.infinity, 
                     height: 2, 
                     color: Colors.black.withOpacity(0.2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            currntindex=!currntindex;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              color: currntindex==true?Colors.black:Colors.blue,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'ចូលចិត្ត',
                               style: GoogleFonts.acme(
                                 color: currntindex==true?Colors.black:Colors.blue,
                               ),
                            ),
                          ],
                        ),
                      ),
                       InkWell(
                        onTap: () {
                          setState(() {
                            cuurntcomment=!cuurntcomment;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.chat,
                              color: cuurntcomment==true?Colors.black:Colors.blue,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'បញ្ចេញមតិ',
                               style: GoogleFonts.acme(
                                 color: cuurntcomment==true?Colors.black:Colors.blue,
                               ),
                            ),
                          ],
                        ),
                      ),
                       InkWell(
                        onTap: () {
                          setState(() {
                            currentshare=!currentshare;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.share,
                              color: currentshare==true?Colors.black:Colors.blue,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'ចែករំលែក',
                               style: GoogleFonts.acme(
                                 color: currentshare==true?Colors.black:Colors.blue,
                               ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
               const line_cut()
              ],
            ),
    );
    }),
    );
  }
}
