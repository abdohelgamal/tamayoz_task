import 'package:flutter/material.dart';

class Resetpassword extends StatefulWidget {
  @override
  _ResetpasswordState createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  late String mail;
  late String pass1;
  late String pass2;
  final TextStyle labelstyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w600, color: Colors.blueGrey[800]);
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
                          const Text('إعادة تعيين كلمة المرور',
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
                            hintStyle: const TextStyle(
                                fontSize: 20, color: Colors.grey),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'أدخل كلمة المرور الجديدة',
                        style: labelstyle,
                      ),
                      TextFormField(
                        onChanged: (str) {
                          setState(() {
                            pass1 = str;
                          });
                        },
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: 'كلمة المرور الجديدة',
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: const TextStyle(
                                fontSize: 20, color: Colors.grey),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        ' أدخل كلمة المرور الجديدة مرة أخرى',
                        style: labelstyle,
                      ),
                      TextFormField(
                        onChanged: (str) {
                          setState(() {
                            pass2 = str;
                          });
                        },
                        obscureText: true,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: 'كلمة المرور الجديدة',
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: const TextStyle(
                                fontSize: 20, color: Colors.grey),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromRGBO(52, 152, 219, 20)),
                                fixedSize: MaterialStateProperty.all(Size(
                                  MediaQuery.of(context).size.width,
                                  70,
                                ))),
                            onPressed: () {},
                            child: const Text('حفظ كلمة المرور',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600))),
                      ),
                    ]))));
  }
}
