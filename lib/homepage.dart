import 'dart:convert';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamayoz_task/api.dart';
import 'package:tamayoz_task/coursecomponent.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey btmnavkey = GlobalKey();
  List<Widget> freecourses = [];
  List<Widget> mostviewed = [];
  List<Widget> newestcourses = [];

  @override
  void initState() {
    ApiFunctions.getCourses().then((value) {
      List data = jsonDecode(value.body);
      List free = [];
      for (var element in data) {
        if (element['type'] == 'free') {
          free.add(element);
        }
      }
      // data.sort((a, b) {
      //   return DateTime.parse(a['created_at'].toString())
      //       .compareTo(DateTime.parse(a['created_at']));
      // });
      for (var element in free) {
        freecourses.add(Coursecomponent(element));
      }
      data.forEach((element) {
        newestcourses.add(Coursecomponent(element));
      });
      setState(() {
        mostviewed = newestcourses.take(6).toList();
      });
    });
  }

//TODO: fix bottomnavbar
  int btmnavindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            btmnavindex = index;
          });
        },
        key: btmnavkey,
        currentIndex: btmnavindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Colors.grey[300],
              ),
              activeIcon: Icon(Icons.home_sharp, color: Colors.grey[300]),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Colors.grey[300],
              ),
              activeIcon: Icon(Icons.home_sharp, color: Colors.grey[300]),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Colors.grey[300],
              ),
              activeIcon: Icon(Icons.home_sharp, color: Colors.grey[300]),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Colors.grey[300],
              ),
              activeIcon: Icon(Icons.home_sharp, color: Colors.grey[300]),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Colors.grey[300],
              ),
              activeIcon: Icon(Icons.home_sharp, color: Colors.grey[300]),
              label: ''),
        ],
        backgroundColor: Colors.blue[600],
        unselectedItemColor: Colors.blue[600],
        fixedColor: Colors.blue[600],
        showSelectedLabels: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                const Text(
                  'اسم التطبيق',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
                IconButton(
                    iconSize: 35,
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/bell.svg',
                      color: Colors.blue[400],
                      width: 45,
                    ))
              ],
            ),
            TextFormField(
              onChanged: (str) {},
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                  prefixIcon: Container(
                    child: IconButton(
                      iconSize: 55,
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 45,
                      ),
                      onPressed: () {},
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue[400],
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.blue[50],
                  hintText: 'البحث',
                  hintTextDirection: TextDirection.rtl,
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[300],
                    height: 1,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'الأكثر مشاهدة',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
              width: double.infinity,
              child: mostviewed.isEmpty
                    ? 
                        Center(
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ),
                        )
                      
                    : ListView(
                reverse: true,
                children:  mostviewed,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'مساقات مجانية',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
              width: double.infinity,
              child: freecourses.isEmpty
                    ? 
                        Center(
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ),
                        )
                      
                    : ListView(
                reverse: true,
                children: freecourses,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'أحدث المساقات',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
              width: MediaQuery.of(context).size.width,
              child: newestcourses.isEmpty
                    ? 
                        Center(
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ),
                        )
                      
                    : ListView(
                shrinkWrap: true,
                reverse: true,
                children:  newestcourses,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
