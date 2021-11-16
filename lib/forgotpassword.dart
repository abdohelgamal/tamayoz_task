import 'package:flutter/material.dart';
import 'package:tamayoz_task/verifyemail.dart';

class Forgotpass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(8)),
                    child: IconButton(
                        iconSize: 25,
                        color: Colors.blueAccent,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.east)),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text('نسيت كلمة المرور',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'أدخل البريد الإلكتروني الخاص بك و سوف نرسل لك رسالة للتحقق من البريد الإلكتروني',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'أدخل بريدك الإلكتروني',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey[800]),
              ),
              TextFormField(
                validator: (str) {
                  if (str == null || !str.contains('@')) {
                    return 'Invalid Email ';
                  }
                },
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'البريد الإلكتروني',
                    hintTextDirection: TextDirection.rtl,
                    hintStyle:
                        const TextStyle(fontSize: 20, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5))),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStateProperty.all(Colors.blue[400]),
                      fixedSize: MaterialStateProperty.all(Size(
                        MediaQuery.of(context).size.width,
                        70,
                      ))),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) =>  Verifyemail()));
                  },
                  child: const Text('متابعة',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600))),
            ],
          ),
        ),
      ),
    );
  }
}
