import 'dart:html';

import 'package:icacoe/icacoe.dart';

void main() {
  // model
  var grid = new SquareGrid(3);
  var cell23 = grid.cell(1, 2);
  assert(cell23.row == 1 && cell23.column == 2);
  for (var c in grid.cells) assert(c.text == null);
  // view
  var canvas = querySelector('#canvas');
  new Board(grid, canvas).draw();
}


