import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamayoz_task/Forgotpassword.dart';
import 'package:tamayoz_task/signup.dart';

class Signin extends StatefulWidget {

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final GlobalKey k = GlobalKey();

  final TextStyle labelstyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w600, color: Colors.blueGrey[800]);

  late String pass;
  late String mail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
          child: Form(
            child: Column(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.start,
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
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.east)),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text('تسجيل الدخول',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'أدخل بريدك الإلكتروني',
                style: labelstyle,
              ),
              TextFormField(
                onChanged: (str) {
                  setState(() {
                    mail = str;
                  });
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
              Text(
                'أدخل كلمة المرور',
                style: labelstyle,
              ),
              TextFormField(
                onChanged: (str) {
                  setState(() {
                    pass = str;
                  });
                },
                obscureText: true,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'كلمة المرور',
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
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>  Forgotpass()));
                      },
                      child: const Text(
                        'نسيت كلمة المرور؟',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ))),
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
                  onPressed: () {
                  },
                  child: const Text('تسجيل الدخول',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      endIndent: 10,
                      color: Colors.grey[700],
                    )),
                    const Text(
                      'أو سجل عبر',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Expanded(
                        child: Divider(
                      indent: 10,
                      color: Colors.grey[700],
                    ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton.icon(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        fixedSize: MaterialStateProperty.all(Size(
                            MediaQuery.of(context).size.width * 0.45, 70))),
                    icon: const Text(
                      'جوجل',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                    ),
                    label: SvgPicture.asset(
                      'assets/google.svg',
                      color: Colors.red[600],
                      height: 40,
                    ),
                    onPressed: () {},
                  ),
                  OutlinedButton.icon(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        fixedSize: MaterialStateProperty.all(Size(
                            MediaQuery.of(context).size.width * 0.45, 70))),
                    icon: const Text(
                      'فيسبوك',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                    ),
                    label: SvgPicture.asset(
                      'assets/facebook.svg',
                      color: Colors.blue[800],
                      height: 40,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              const Spacer(),
              const Center(
                  child: Text(
                'لا تملك حساب؟',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(44, 62, 80, 10)),
                    minimumSize: MaterialStateProperty.all(const Size(
                      double.infinity,
                      60,
                    )),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => Signup()));
                  },
                  child: const Text(
                    'إنشاء حساب',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  )),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
