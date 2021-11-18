import 'package:flutter/material.dart';


class LessonButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Row(
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
        ]);
  }
}
