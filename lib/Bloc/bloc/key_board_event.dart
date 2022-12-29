part of 'key_board_bloc.dart';

abstract class KeyBoardEvent {}

class RemoveString extends KeyBoardEvent {

}

class GetString extends KeyBoardEvent {
  String keyString;
  GetString({required this.keyString});
}
