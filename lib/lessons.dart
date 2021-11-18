import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tamayoz_task/api.dart';

class CourseLessons extends StatefulWidget{
  
  @override
  State<CourseLessons> createState() => _CourseLessonsState();
}

class _CourseLessonsState extends State<CourseLessons> {

  int currentpage = 1;
@override
  void initState() {
    super.initState();
 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: currentpage == 0
            ? Container(
                alignment: Alignment.center,
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
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
                    child: const Text('اترك سؤال',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600))),
              )
            : null,
        body: SafeArea(
            child: DefaultTabController(
          initialIndex: 1,
          length: 2,
          child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textDirection: TextDirection.rtl,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'المساق',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.w600),
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
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  iconSize: 35,
                                  icon: Icon(
                                    Icons.info_rounded,
                                    color: Colors.blue[400],
                                  )),
                              const SizedBox(
                                width: 25,
                              ),
                              CircularPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                percent: 0.11,
                                lineWidth: 5,
                                center: Text(
                                  '10%',
                                  style: TextStyle(color: Colors.blue[400]),
                                ),
                                radius: 60,
                                progressColor: Colors.blue[400],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.network(
                                  'https://store.ubi.com/dw/image/v2/ABBS_PRD/on/demandware.static/-/Sites-masterCatalog/default/dw15d4cc72/images/large/56c4948a88a7e300458b482a-2.jpg?sw=1450&sh=815&sm=fit',
                                  fit: BoxFit.none,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  iconSize: 80,
                                  icon: const Icon(
                                    Icons.play_circle_outline,
                                  ),
                                  color: Colors.white,
                                )
                              ],
                            )),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 5, 25, 5),
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                            '3. عنوان الدرس',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: TabBar(
                              onTap: (i) {
                                setState(() {
                                  currentpage = i;
                                });
                              },
                              indicatorWeight: 3,
                              indicatorColor: Colors.blue,
                              labelColor: Colors.black,
                              labelStyle: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                              tabs: const [
                                Tab(
                                  text: 'الأسئلة',
                                ),
                                Tab(
                                  text: 'المقرر',
                                ),
                              ]),
                        ),
                        SizedBox.fromSize(
                            size: Size(MediaQuery.of(context).size.width,
                                MediaQuery.of(context).size.shortestSide),
                            child: TabBarView(children: [
                              ListView(
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
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                height: 60,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 20),
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        child: Row(
                                          textDirection: TextDirection.rtl,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.blue[400],
                                              child: const Icon(
                                                Icons.check,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const Text(
                                              'عنوان الدرس',
                                              style: TextStyle(
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('2:30',
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 23)),
                                    ]),
                              ),
                            ]))
                      ],
                    )
                  ])),
        )));
  }
}
