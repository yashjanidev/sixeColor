import 'dart:convert';

import 'package:flutter/material.dart';

// This file contains Second Widget which is Product Color

class productColor extends StatefulWidget {
  late List data;

  @override
  State<productColor> createState() => productColorState();
}

class productColorState extends State<productColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        // Use future builder and DefaultAssetBundle to load the local JSON file
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/images/product_images.json'),
          builder: (context, snapshot) {
            // Decode the JSON
            var new_data = json.decode(snapshot.data.toString());

            return Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 6,
                      ),
                    ),
                    child: InkWell(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          new_data[index]['image'],
                          height: 100.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        print(index);
                      },
                    ),
                  );
                },
                itemCount: new_data == null ? 0 : new_data.length,
              ),
            );
          },
        ),
      ),
    ));
  }
}
