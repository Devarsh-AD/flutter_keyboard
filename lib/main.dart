// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flut_keyboard/Bloc/bloc/key_board_bloc.dart';
import 'package:flut_keyboard/constants/keyString.dart';
import 'package:flut_keyboard/screens/Home_screen.dart';
import 'package:flut_keyboard/widgets/flutter_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<KeyBoardBloc>(
      create: (context) => KeyBoardBloc(),
      child: MaterialApp(
        title: 'Flutter KeyBoard',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter KeyBoard'),
            ),
            body: Home()),
      ),
    );
  }
}