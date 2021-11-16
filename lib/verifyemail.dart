import 'package:flutter/material.dart';
import 'package:tamayoz_task/resetpassword.dart';

class Verifyemail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
                child: Column(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                color: Colors.blue,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.east)),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text('التحقق من بريدك الإلكتروني',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                      const Spacer(),
                      Container(padding: const EdgeInsets.all(35),
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.height * 0.2,
                        color: Colors.blue[50],
                        child: Image.asset(
                          'assets/email.png',color: Colors.blue,
                          fit: BoxFit.scaleDown,
                        
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'راجع بريدك الإلكتروني حتى تتمكن من إعادة تعيين كلمة المرور الخاصة بك',
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(52, 152, 219, 20)),
                              fixedSize: MaterialStateProperty.all(Size(
                                MediaQuery.of(context).size.width,
                                70,
                              ))),
                          onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (_) => Resetpassword()));},
                          child: const Text('الانتقال إلى بريدك',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600))),
                      const Spacer(flex: 4,)
                    ]))));
  }
}
