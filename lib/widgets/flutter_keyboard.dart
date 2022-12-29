import 'package:flut_keyboard/widgets/keyboard_rows/keyboard_rows.dart';
import 'package:flut_keyboard/widgets/preffredSized_box/perfredSize_box.dart';
import 'package:flutter/material.dart';

class FlutterKeyboard extends StatefulWidget {
  const FlutterKeyboard({super.key});

  @override
  State<FlutterKeyboard> createState() => _FlutterKeyboardState();
}

class _FlutterKeyboardState extends State<FlutterKeyboard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Color.fromARGB(255, 85, 83, 83),
            child: Column(
              children: [
                customSizedBox(5, 0),
                firstRow(),
                secondRow(),
                thirdRow(),
                fifthRow(),
                sixthRow()
              ],
            ),
          ),
        ],
      ),
      Positioned(
          bottom: 100,
          left: 368,
          child: Container(
            height: 20,
            width: 37,
            color: Color.fromARGB(255, 63, 216, 236),
          ))
    ]);
  }
}
