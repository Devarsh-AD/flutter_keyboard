part of 'key_board_bloc.dart';

@immutable
abstract class KeyBoardState {}

class KeyBoardInitial extends KeyBoardState {}

class RemovedKeyState extends KeyBoardState{}
class GetKeyState extends KeyBoardState{
    String keyString;
  GetKeyState({required this.keyString});
}
