import 'package:flutter/material.dart';
import 'package:flutter_app/clone%20facebook/model/data%20story.dart';
import 'package:flutter_app/e-commerce/view/howe_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class story extends StatelessWidget {
  const story({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Container(
         margin:const EdgeInsets.only(
           left: 10,
           right: 5
         ),
         height: 240, 
         width: 150,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.5),
          ),
           borderRadius:const BorderRadius.all(
            Radius.circular(20)
           )
        ),
        child: Stack(
          children: [
            Container(
              height: 160,
              width: 150,
               decoration:const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/facebook/myprofile.jpg'),
                  fit: BoxFit.cover
                  ),
                 borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
            ),
           const Positioned(
              top: 145,
              left: 60,
              child: CircleAvatar(
                radius: 15,
                 child: Icon(Icons.close),
            )
            ),
            Positioned(
              bottom: 10,
               left: 30,
              child: Text(
                'បង្កើតរឿង',
                style: GoogleFonts.notoSerifKhmer(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              )
            )
          ],
        ),
       ),
     Row(
       children: List.generate(list_story.length, (index){
        var data=list_story[index];
        return InkWell(
          onTap: () {
            
          },
          child: Stack(
           children: [
           Container(
             margin:const EdgeInsets.all(5),
             height: 240, 
             width: 150,           
             decoration: BoxDecoration(
               border: Border.all(
               color: Colors.black.withOpacity(0.5),
              ),
             image: DecorationImage(
              image: AssetImage(data.image),
              fit: BoxFit.cover,
             ),
              borderRadius:const BorderRadius.all(
              Radius.circular(20)
             )
          ),
           ),
          Positioned(
              left: 15,
              top: 15,
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                   radius: 20,
                   backgroundImage: AssetImage(data.profile),
             ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 20,
              child: Text(
                data.name,
                style:GoogleFonts.notoSansKhmer(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )
              ),
            )
           ],
               ),
        );  
       }
       ),
     )
     ],
    );
  }
}

