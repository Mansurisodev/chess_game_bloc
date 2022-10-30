import 'package:chess_app/bloc/cubits/game_cubit.dart';
import 'package:chess_app/bloc/cubits/settings_cubit.dart';
import 'package:get_it/get_it.dart';

createAppBlocs() {
  GetIt.I.registerSingleton<GameCubit>(GameCubit.initial());
  GetIt.I.registerSingleton<SettingsCubit>(SettingsCubit.initial());
}
