// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class CustomKey extends StatefulWidget {
  final String? keys;
  final double customWidth;
  double? customHeight;
  final double fSize;
  bool? shouldVisible;
  CustomKey(
      {required this.keys,
      required this.customWidth,
      required this.fSize,
      this.customHeight,
      this.shouldVisible});

  @override
  State<CustomKey> createState() => _CustomKeyState();
}

class _CustomKeyState extends State<CustomKey> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints.loose(Size.infinite),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 63, 216, 236),
              borderRadius: BorderRadius.circular(8)),
          height: widget.customHeight ?? 30,
          width: widget.customWidth,
          child: Center(
              child: Text(
            '${widget.keys}',
            style: TextStyle(
                color: Color.fromARGB(166, 0, 0, 0),
                fontSize: widget.fSize,
                fontWeight: FontWeight.w600),
          )),
        ),
        Visibility(
          visible: widget.shouldVisible ?? false,
            child: SizedBox(
          height: 5,
        ))
      ],
    );
  }
}
