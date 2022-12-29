import 'package:flut_keyboard/constants/keyString.dart';
import 'package:flut_keyboard/widgets/keys/custom_key.dart';
import 'package:flut_keyboard/widgets/keys/key_with_raster.dart';
import 'package:flut_keyboard/widgets/keys/keys.dart';
import 'package:flutter/material.dart';

class FifthRow extends StatelessWidget {
  const FifthRow({
    Key? key,
  }) : super(key: key);

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
       
        CustomKey(
          shouldVisible: true,
          fSize: 15,
          customWidth: 95,
          keys: '',
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
  const FourthRow({
    Key? key,
  }) : super(key: key);

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
            children: getKey(lnFour),
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
  const FirstRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: getKey(lnOne),
          ),
        ),
      ],
    );
  }
}

class SecondRow extends StatelessWidget {
  const SecondRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: CustomKey(
            shouldVisible: true,
            fSize: 15,
            customWidth: 48,
            keys: 'TAB',
          ),
        ),
        Expanded(
          flex: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: getKey(lnTwo),
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

class ThirdRow extends StatelessWidget {
  const ThirdRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: CustomKey(
            shouldVisible: true,
            fSize: 13,
            customWidth: 45,
            keys: 'CAPS',
          ),
        ),
        Expanded(
          flex: 78,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: getKey(lnThree),
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

  List<Widget> getKey(List<String> keys) {
    List<Widget> keyWidget = [];
    for (String i in keys) {
    keyWidget.add(GestureDetector(
      // onTap: () => getPressedKey(i),
      child: MyKey(
        keys: i,
      ),
      ));
    }
    return keyWidget;
  }