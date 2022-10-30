import 'package:chess_app/bloc/states/settings_state.dart';
import 'package:chess_app/models/board.dart';
import 'package:chess_app/models/lost_figures.dart';
import 'package:chess_app/models/player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(SettingsState initialState) : super(initialState);

  factory SettingsCubit.initial() {
    final board = Board(cells: [], whiteLost: LostFigures(), blackLost: LostFigures());
    board.createCells();
    board.putFigures();

    return SettingsCubit(SettingsState(
      whitePlayer: Player.human(),
      blackPlayer: Player.human(),
      difficulty: 1,
    ));
  }
}
