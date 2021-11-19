import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tamayoz_task/api.dart';
import 'package:tamayoz_task/lessoncomponent.dart';
import 'package:tamayoz_task/questions.dart';

class CourseLessons extends StatefulWidget {
  CourseLessons(this.lessons, this.title);
  List lessons;
  String title;

  @override
  State<CourseLessons> createState() => _CourseLessonsState();
}

class _CourseLessonsState extends State<CourseLessons> {
  int currentpage = 1;
  List<Widget> lessonsliswidget = [];
  @override
  void initState() {
    super.initState();
    lessonsliswidget =
        widget.lessons.map((lesson) => LessonButton(lesson['title'],lesson['id'],)).toList();
        
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
                    onPressed: () {},
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
                              Text(
                                widget.title,
                                style: const TextStyle(
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
                            height: MediaQuery.of(context).size.width * 9 / 16,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                SizedBox.expand(
                                  child: Image.asset(
                                    'assets/courseimage.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    iconSize: 80,
                                    icon: const Icon(
                                      Icons.play_circle_outline,
                                    ),
                                    color: Colors.white,
                                  ),
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
                              Questionscomponent(),
                              Container(
                                alignment: Alignment.topCenter,
                                height: 60,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 20),
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: ListView(children: lessonsliswidget),
                              ),
                            ]))
                      ],
                    )
                  ])),
        )));
  }
}
