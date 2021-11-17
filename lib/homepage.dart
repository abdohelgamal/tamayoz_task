import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey btmnavkey = GlobalKey();
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
              activeIcon: Container(
                  child: Icon(Icons.home_sharp, color: Colors.grey[300])),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Colors.grey[300],
              ),
              activeIcon: Container(
                  child: Icon(Icons.home_sharp, color: Colors.grey[300])),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Colors.grey[300],
              ),
              activeIcon: Container(
                  child: Icon(Icons.home_sharp, color: Colors.grey[300])),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Colors.grey[300],
              ),
              activeIcon: Container(
                  child: Icon(Icons.home_sharp, color: Colors.grey[300])),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Colors.grey[300],
              ),
              activeIcon: Container(
                  child: Icon(Icons.home_sharp, color: Colors.grey[300])),
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
              obscureText: true,
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                  prefixIcon: Container(
                    child: IconButton(
                      iconSize: 55,
                      icon: Icon(
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
            Container(
              height: MediaQuery.of(context).size.height * 0.32,
              width: double.infinity,
              child: ListView(
                reverse: true,
                children: [
                  GestureDetector(
                      child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.32,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(children: [
                      Image.network(
                        'https://images.ctfassets.net/hrltx12pl8hq/4plHDVeTkWuFMihxQnzBSb/aea2f06d675c3d710d095306e377382f/shutterstock_554314555_copy.jpg',
                        height: 200,
                           width: MediaQuery.of(context).size.width * 0.7,
                        fit: BoxFit.fitWidth,
                      ),
                      Container(alignment: Alignment.topCenter,
                      height: 83,
                        width: MediaQuery.of(context).size.width * 0.7,
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'المساق',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  'مجانية',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 20),
                                )
                              ],
                            ),
                            Row(textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'المساق',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  'مجانية',
                                  style: TextStyle(color: Colors.orange,fontSize: 20),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  ))
                ],
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
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: ListView(
                children: [],
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
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: ListView(
                children: [],
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
