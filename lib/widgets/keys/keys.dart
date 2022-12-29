// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flut_keyboard/widgets/preffredSized_box/perfredSize_box.dart';
import 'package:flutter/material.dart';

class MyKey extends StatefulWidget {
  final String? keys;
  const MyKey({required this.keys});

  @override
  State<MyKey> createState() => _MyKeyState();
}

class _MyKeyState extends State<MyKey> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints.loose(Size.infinite),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 63, 216, 236),
              borderRadius: BorderRadius.circular(8)),
          height: 30,
          width: 25,
          child: Center(
              child: Text(
            '${widget.keys}',
            style: TextStyle(
                color: Color.fromARGB(166, 0, 0, 0),
                fontSize: 15,
                fontWeight: FontWeight.w600),
          )),
        ),
        customSizedBox(5, 0),
      ],
    );
  }
}
