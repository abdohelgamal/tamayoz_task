import 'package:flutter/material.dart';


class Questionscomponent extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
          horizontal: 30, vertical: 20),
      children: [
        Padding(
          padding:
              const EdgeInsets.only(bottom: 20.0),
          child: TextField(
            onChanged: (str) {},
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.blue[300],
                  size: 45,
                ),
                filled: true,
                fillColor: Colors.blue[50],
                hintText: 'البحث في الأسئلة',
                hintTextDirection: TextDirection.rtl,
                hintStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.blue[300],
                  height: 1,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius:
                        BorderRadius.circular(10))),
          ),
        ),
        Container(margin:const EdgeInsets.symmetric(vertical: 10), 
          padding: const EdgeInsets.all(20),
          child: Column(
            textDirection: TextDirection.rtl,
            children: [
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0),
                    child: CircleAvatar(
                        radius: 35,
                        backgroundColor:
                            Colors.grey[300],
                        child: Icon(
                          Icons.person,
                          color: Colors.grey.shade100,
                          size: 50,
                        )),
                  ),
                  Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'اسم المستخدم',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                        textDirection:
                            TextDirection.rtl,
                      ),
                      Text('10-11-2021',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey),
                          textDirection:
                              TextDirection.rtl)
                    ],
                  ),
                ],
              ),
              const Text(
                  'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة؟',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              const Text(
                  '،هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من مولد النص العربى، حيث',
                  textDirection: TextDirection.rtl,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text('إضافة أجابة',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight:
                                  FontWeight.w700))),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'المزيد',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.w700),
                      ))
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey.shade200,
                )
              ]),
        ), Container(margin:const EdgeInsets.symmetric(vertical: 10), 
          padding: const EdgeInsets.all(20),
          child: Column(
            textDirection: TextDirection.rtl,
            children: [
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0),
                    child: CircleAvatar(
                        radius: 35,
                        backgroundColor:
                            Colors.grey[300],
                        child: Icon(
                          Icons.person,
                          color: Colors.grey.shade100,
                          size: 50,
                        )),
                  ),
                  Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'اسم المستخدم',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                        textDirection:
                            TextDirection.rtl,
                      ),
                      Text('10-11-2021',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey),
                          textDirection:
                              TextDirection.rtl)
                    ],
                  ),
                ],
              ),
              const Text(
                  'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة؟',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              const Text(
                  '،هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من مولد النص العربى، حيث',
                  textDirection: TextDirection.rtl,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text('إضافة أجابة',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight:
                                  FontWeight.w700))),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'المزيد',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.w700),
                      ))
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey.shade200,
                )
              ]),
        )
      ],
    );
  }
}
