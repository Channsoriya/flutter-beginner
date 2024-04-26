import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  body: GridView.builder(
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //  crossAxisCount: 2,
    //  crossAxisSpacing: 10,
    //  mainAxisSpacing: 10,
    //   ), 
    //   itemBuilder: (context, index) {
    //     return Container(
    //       color: Colors.red,
    //     );
    //   },),

    // body: GridView.count(
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 10,
    //   children: [
    //     Container(
    //       color: Colors.red,
    //     ),
    //      Container(
    //       color: Colors.red,
    //     ),
    //      Container(
    //       color: Colors.red,
    //     )
    //   ],
    //   ),

    appBar: AppBar(

    ),
    body: Column(
      children: [
        
      ],
    ),
    );
  }
}