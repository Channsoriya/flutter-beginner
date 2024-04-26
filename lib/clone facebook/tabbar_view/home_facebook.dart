import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/all_post.dart';
import '../component/line_cut.dart';
import '../component/story.dart';

class HomeFacebook extends StatefulWidget {
  const HomeFacebook(
    {super.key} );

  @override
  State<HomeFacebook> createState() => _HomeFacebookState();
}

class _HomeFacebookState extends State<HomeFacebook> {
  @override
  Widget build(BuildContext context) {
      double SizeWidth=MediaQuery.of(context).size.width;
    double SizeHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
             const SizedBox(
               height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 const CircleAvatar(
                    backgroundImage: AssetImage('assets/facebook/myprofile.jpg'),
                    radius: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:const BorderRadius.all(
                        Radius.circular(20)
                      ),
                      border: Border.all(
                        color: Colors.black
                      )
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(
                        right: SizeWidth*0.35,
                        left: 20,
                        top: 9, 
                        bottom: 9
                      ),
                      child: Text(
                        'តើអ្នកកំពុងគិតអ្វី?',
                        style: GoogleFonts.khmer(
                          color: Colors.black,
                        ),
        
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      
                    }, icon:const Icon(
                      Icons.image,
                    ))
                ],
              ),
             const SizedBox(
               height: 10,
              ),
             const line_cut(),
              const SizedBox(
               height: 10,
              ),
             const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: story(),
             ),
              const SizedBox(
               height: 8,
              ),
              const line_cut(),
              const all_post()
            ],
          ),
        )
      ),
    );
  }
}
