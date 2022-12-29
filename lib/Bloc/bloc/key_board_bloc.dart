import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'key_board_event.dart';
part 'key_board_state.dart';

class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  KeyBoardBloc() : super(KeyBoardInitial()) {
    on<KeyBoardEvent>((event, emit) {
      if (event is RemoveString) emit(RemovedKeyState());
      if (event is GetString) emit(GetKeyState(keyString: event.keyString));
    });
  }
}
