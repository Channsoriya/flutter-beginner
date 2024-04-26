
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class list_tle extends StatelessWidget {
  const list_tle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
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
    );
  }
}