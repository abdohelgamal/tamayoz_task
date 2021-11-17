import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CourseLessons extends StatefulWidget {
  @override
  Course_LessonsState createState() => Course_LessonsState();
}

class Course_LessonsState extends State<CourseLessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                      Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.network(
                                'https://store.ubi.com/dw/image/v2/ABBS_PRD/on/demandware.static/-/Sites-masterCatalog/default/dw15d4cc72/images/large/56c4948a88a7e300458b482a-2.jpg?sw=1450&sh=815&sm=fit',
                                fit: BoxFit.fitHeight,
                              ),
                              IconButton(
                                onPressed: () {},
                                iconSize: 80,
                                icon: Icon(
                                  Icons.play_circle_outline,
                                ),
                                color: Colors.white,
                              )
                            ],
                          )),
                      Container(padding:    const EdgeInsets.fromLTRB(0,0,25,5),color: Colors.grey,width: MediaQuery.of(context).size.width,
                        child: Text(
                          '3. عنوان الدرس',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                          textDirection: TextDirection.rtl,
                        ),
                      )
                    ]))));
  }
}
