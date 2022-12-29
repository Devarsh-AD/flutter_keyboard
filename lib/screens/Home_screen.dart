import 'package:flut_keyboard/Bloc/bloc/key_board_bloc.dart';
import 'package:flut_keyboard/constants/keyString.dart';
import 'package:flut_keyboard/widgets/flutter_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController keyPress = TextEditingController();
  late KeyBoardBloc keyBoard;
  @override
  Widget build(BuildContext context) {
    keyBoard = BlocProvider.of<KeyBoardBloc>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: BlocBuilder<KeyBoardBloc, KeyBoardState>(
            builder: (context, state) {
              if (state is GetKeyState) {
                keyPress.text = state.keyString;
              }
              if (state is RemovedKeyState) {
                if (keyPress.text.isNotEmpty) {
                  keyPress.text =
                      keyPress.text.substring(0, keyPress.text.length - 1);
                }
              }
              return TextFormField(
                controller: keyPress,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    labelText: 'Text',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              );
            },
          ),
        ),
        FlutterKeyboard(
            getPressedKey: (s) => {
                  if (CommonManager.isCapsLockOff)
                    {
                      keyBoard.add(GetString(
                          keyString: keyPress.text =
                              keyPress.text + s.toLowerCase()))
                    }
                  else
                    {
                      keyBoard.add(GetString(
                          keyString: keyPress.text = keyPress.text + s))
                    }
                })
      ],
    );
  }
}
