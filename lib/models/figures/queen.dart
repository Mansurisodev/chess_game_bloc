import 'package:chess_app/models/cell.dart';
import 'package:chess_app/models/cell_calculator.dart';
import 'package:chess_app/models/figure.dart';
import 'package:chess_app/models/figure_types.dart';
import 'package:chess_app/models/game_colors.dart';

class Queen extends Figure {
  Queen({required GameColors color, required Cell cell}) : super(color: color, cell: cell, type: FigureTypes.queen);

  @override
  bool availableForMove(Cell to) {
    if (!super.availableForMove(to)) return false;
    return CellCalculator.hasWayForQueen(cell, to);
  }
}
