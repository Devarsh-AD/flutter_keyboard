import 'dart:developer';

import 'package:flut_keyboard/Bloc/bloc/key_board_bloc.dart';
import 'package:flut_keyboard/constants/keyString.dart';
import 'package:flut_keyboard/widgets/keys/custom_key.dart';
import 'package:flut_keyboard/widgets/keys/key_with_raster.dart';
import 'package:flut_keyboard/widgets/keys/keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FifthRow extends StatelessWidget {
  Function(String) getPressedKey;

  FifthRow({required this.getPressedKey});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomKey(
          shouldVisible: true,
          fSize: 15,
          customWidth: 50,
          keys: 'CTRL',
        ),
        IconKeys(
          shouldVisible: true,
          customWidth: 30,
          customHeight: 30,
        ),
        CustomKey(
          shouldVisible: true,
          fSize: 15,
          customWidth: 40,
          keys: 'ALT',
        ),
        GestureDetector(
          onTap: () => getPressedKey(' '),
          child: CustomKey(
            shouldVisible: true,
            fSize: 15,
            customWidth: 95,
            keys: '',
          ),
        ),
        CustomKey(
          shouldVisible: true,
          fSize: 15,
          customWidth: 40,
          keys: 'ALT',
        ),
        IconKeys(
          shouldVisible: true,
          customWidth: 30,
          customHeight: 30,
        ),
        CustomKey(
          shouldVisible: true,
          fSize: 15,
          customWidth: 25,
          keys: 'Fn',
        ),
        CustomKey(
          shouldVisible: true,
          fSize: 15,
          customWidth: 50,
          keys: 'CTRL',
        ),
      ],
    );
  }
}

class FourthRow extends StatelessWidget {
  Function(String) getPressedKey;

  FourthRow({required this.getPressedKey});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 20,
          child: CustomKey(
            shouldVisible: true,
            fSize: 15,
            customWidth: 70,
            keys: 'SHIFT',
          ),
        ),
        Expanded(
          flex: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: getKey(lnFour, (s) => getPressedKey(s)),
          ),
        ),
        Expanded(
          flex: 20,
          child: CustomKey(
            shouldVisible: true,
            fSize: 15,
            customWidth: 70,
            keys: 'SHIFT',
          ),
        ),
      ],
    );
  }
}

class FirstRow extends StatelessWidget {
  Function(String) getPressedKey;

  FirstRow({required this.getPressedKey});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: getKey(lnOne, (s) => getPressedKey(s)),
          ),
        ),
        GestureDetector(
          onTap: () =>
              BlocProvider.of<KeyBoardBloc>(context).add(RemoveString()),
          child: CustomKey(
            shouldVisible: true,
            fSize: 15,
            customWidth: 25,
            keys: '←',
          ),
        ),
      ],
    );
  }
}

class SecondRow extends StatelessWidget {
  Function(String) getPressedKey;

  SecondRow({required this.getPressedKey});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: GestureDetector(
            onTap: () => getPressedKey('  '),
            child: CustomKey(
              shouldVisible: true,
              fSize: 15,
              customWidth: 48,
              keys: 'TAB',
            ),
          ),
        ),
        Expanded(
          flex: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: getKey(lnTwo, (s) => getPressedKey(s)),
          ),
        ),
        Expanded(
          flex: 5,
          child: CustomKey(
            customHeight: 35,
            fSize: 15,
            customWidth: 30,
            keys: '',
          ),
        )
      ],
    );
  }
}

class ThirdRow extends StatefulWidget {
  Function(String) getPressedKey;
  ThirdRow({required this.getPressedKey});

  @override
  State<ThirdRow> createState() => _ThirdRowState();
}

class _ThirdRowState extends State<ThirdRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: GestureDetector(
            onTap: () => {
              log('caaps ${CommomManager.isCapsLock}'),
              !CommomManager.isCapsLock,
              setState(() {}),
              log('caaps ${CommomManager.isCapsLock}'),
            },
            child: CustomKey(
              shouldVisible: true,
              fSize: 13,
              customWidth: 45,
              keys: 'CAPS',
            ),
          ),
        ),
        Expanded(
          flex: 78,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: getKey(lnThree, (s) => widget.getPressedKey(s)),
          ),
        ),
        Expanded(
          flex: 10,
          child: CustomKey(
            shouldVisible: true,
            fSize: 10,
            customWidth: 45,
            keys: 'ENTER',
          ),
        ),
      ],
    );
  }
}

List<Widget> getKey(List<String> keys, Function(String) getPressedKey) {
  List<Widget> keyWidget = [];
  for (String i in keys) {
    keyWidget.add(GestureDetector(
      onTap: () => {
        log('caaps ${CommomManager.isCapsLock}'),
        if (CommomManager.isCapsLock)
          {getPressedKey(i)}
        else
          {getPressedKey(i.toLowerCase())}
      },
      child: MyKey(
        keys: i,
      ),
    ));
  }
  return keyWidget;
}
