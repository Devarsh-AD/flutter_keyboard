import 'package:flut_keyboard/widgets/keyboard_rows/keyboard_rows.dart';
import 'package:flut_keyboard/widgets/preffredSized_box/perfredSize_box.dart';
import 'package:flutter/material.dart';

class FlutterKeyboard extends StatefulWidget {
  Function(String) getPressedKey;

  FlutterKeyboard({required this.getPressedKey});

  @override
  State<FlutterKeyboard> createState() => _FlutterKeyboardState();
}

class _FlutterKeyboardState extends State<FlutterKeyboard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: const Color.fromARGB(255, 85, 83, 83),
        child: Column(
          children: [
            customSizedBox(5, 0),
            FirstRow(getPressedKey: (s) => widget.getPressedKey(s)),
            SecondRow(getPressedKey: (s) => widget.getPressedKey(s)),
            ThirdRow(getPressedKey: (s) => widget.getPressedKey(s)),
            FourthRow(getPressedKey: (s) => widget.getPressedKey(s)),
            FifthRow(getPressedKey: (s) => widget.getPressedKey(s))
          ],
        ),
      ),
      Positioned(
          bottom: 100,
          left: 368,
          child: Container(
            height: 20,
            width: 37,
            color: const Color.fromARGB(255, 63, 216, 236),
          ))
    ]);
  }
}
