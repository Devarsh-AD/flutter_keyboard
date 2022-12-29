// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconKeys extends StatefulWidget {
  final double customWidth;
  double? customHeight;
  bool? shouldVisible;
  IconKeys({required this.customWidth, this.customHeight, this.shouldVisible});

  @override
  State<IconKeys> createState() => _IconKeyStates();
}

class _IconKeyStates extends State<IconKeys> {
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
              child: SvgPicture.asset(
            'images/win-key.svg',
            height: 20,
            width: 20,
            color: Color.fromARGB(166, 0, 0, 0),
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
