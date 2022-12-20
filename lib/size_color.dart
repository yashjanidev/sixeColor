import 'dart:convert';

import 'package:flutter/material.dart';

// This file contains First Widget which is Size

class sizeColor extends StatefulWidget {
  late List data;

  @override
  State<sizeColor> createState() => sizeColorState();
}

class sizeColorState extends State<sizeColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          // Use future builder and DefaultAssetBundle to load the local JSON file
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/images/sizeNumber.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              var new_data = json.decode(snapshot.data.toString());

              return Row(
                children: [
                  Container(
                    child: Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 65.0,
                            height: 65.0,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 5.0,
                                ),
                                SizedBox(
                                  height: 40.0,
                                  width: 40.0,
                                  child: InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[300],
                                      ),
                                      child: Align(
                                        child: Text(
                                          new_data[index]['name'],
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      print(index);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: new_data == null ? 0 : new_data.length,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
