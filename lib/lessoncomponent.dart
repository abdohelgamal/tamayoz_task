import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:tamayoz_task/api.dart';

class LessonButton extends StatefulWidget {
  String title;
  int id;
  LessonButton(this.title, this.id);

  @override
  State<LessonButton> createState() => _LessonButtonState();
}

class _LessonButtonState extends State<LessonButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.rtl,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[400],
                    child: const Icon(
                      Icons.check,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Text('2:35',
                style: TextStyle(color: Colors.grey[400], fontSize: 23)),
          ]),
    );
  }
}
