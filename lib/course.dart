import 'package:flutter/material.dart';
import 'package:tamayoz_task/lessons.dart';
import 'dart:math' as math;

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(0, 2))
          ]),
          height: MediaQuery.of(context).size.height * 0.13,
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(52, 152, 219, 20)),
                  fixedSize: MaterialStateProperty.all(Size(
                    MediaQuery.of(context).size.width * 0.85,
                    70,
                  ))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => CourseLessons()));
              },
              child: const Text('التسجيل في المساق',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600))),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30, top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          textDirection: TextDirection.rtl,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'المساق',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 40),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[50],
                                      borderRadius: BorderRadius.circular(8)),
                                  child: IconButton(
                                      iconSize: 25,
                                      color: Colors.blue,
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.east)),
                                ),
                              ],
                            ),
                            IconButton(
                                iconSize: 35,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.bookmark_border,
                                  color: Colors.blue,
                                ))
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://www.aljadeed.com/wp-content/uploads/2021/03/Image-Compressor-Online-%D9%85%D9%88%D9%82%D8%B9-%D9%84%D8%AE%D9%81%D8%B6-%D8%AD%D8%AC%D9%85-%D8%A7%D9%84%D8%B5%D9%88%D8%B1-%D8%A7%D9%88%D9%86-%D9%84%D8%A7%D9%8A%D9%86-%D8%A8%D8%AF%D9%88%D9%86-%D8%AA%D9%82%D9%84%D9%8A%D9%84-%D8%A7%D9%84%D8%AC%D9%88%D8%AF%D8%A9.jpg',
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.9,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          padding: const EdgeInsets.all(20),
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                spreadRadius: 1.5,
                                blurRadius: 8.0,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'مجاني',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'المساق',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                              Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '3 ساعات',
                                        style: TextStyle(
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
                                              borderRadius:
                                                  BorderRadius.circular(20)),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '20 درس',
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
                              ),
                            ],
                          )),
                      Text(
                        'عن المساق',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                    ]))));
  }
}