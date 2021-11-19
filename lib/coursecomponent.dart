import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:tamayoz_task/course.dart';

class Coursecomponent extends StatelessWidget {
  Coursecomponent(this.element);

  var element;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => Course(element['id'])));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.32,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Stack(alignment: Alignment.topCenter, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/courseimage.jpg',
                height: 200,
                width: MediaQuery.of(context).size.width * 0.7,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 150,
              child: Container(
                alignment: Alignment.topCenter,
              
                width: MediaQuery.of(context).size.width * 0.7,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          element['title'].toString(),
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(
                          element['type'].toString() == 'paid'
                              ? '\$20'
                              : 'مجانية',
                          style: const TextStyle(
                              color: Colors.orange, fontSize: 20),
                        )
                      ],
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '${element['duration'].toString()} ساعات',
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              textDirection: TextDirection.rtl,
                            ),
                            Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)),
                                margin: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/9oclock.png',
                                  color: Colors.white,
                                  height: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              '20 درس', //TODO: 20 lessons because endpoint has no lessons key and to show lessons I will have to request another endpoint for each component and this will heavely slow down the app
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/ondemandvideo.png',
                                color: Colors.orange,
                                height: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
