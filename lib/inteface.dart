import 'package:flutter/material.dart';
import 'package:tamayoz_task/signin.dart';
import 'package:tamayoz_task/signup.dart';

class Interface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(52, 152, 219, 20),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            Image.asset(
              'assets/books.png',
              height: MediaQuery.of(context).size.width * 0.3,
              color: Colors.white,
            ),
            const Text(
              'اسم التطبيق',
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
            const Spacer(),
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.all(const Size(
                    double.infinity,
                    60,
                  )),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Signup()));
                },
                child: const Text(
                  'إنشاء حساب',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(200, 44, 62, 80)),
                    minimumSize: MaterialStateProperty.all(const Size(
                      double.infinity,
                      60,
                    ))),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Signin()));
                },
                child: const Text('تسجيل الدخول',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600))),
          ],
        ),
      ),
    );
  }
}
