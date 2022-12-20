import 'package:flutter/material.dart';

import 'size_color.dart';
import 'product_color.dart';

// This file contains 2 main Widgets 1) Size and 2) Color
// This is Parent(Primary file)

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Size",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            SizedBox(
              height: 55.0,
              child: sizeColor(),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Size Guide",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  'assets/images/size_guide.png',
                  height: 22,
                  width: 22,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Color",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 70.0,
              child: productColor(),
            ),
          ],
        ),
      ),
    );
  }
}
