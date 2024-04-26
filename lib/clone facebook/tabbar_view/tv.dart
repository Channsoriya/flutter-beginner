import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/clone%20facebook/widet/circel_button.dart';

class TvPage extends StatefulWidget {
  const TvPage({super.key});

  @override
  State<TvPage> createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        'Video'
                       ),
                       Row(
                        children: [
                          circel_button(iconcircel: Icons.person),
                          circel_button(iconcircel: Icons.search)
                        ],
                       )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}