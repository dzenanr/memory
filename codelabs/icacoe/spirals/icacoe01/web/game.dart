import 'dart:html';

import 'package:icacoe/model/plane.dart';
import 'package:icacoe/view/geo.dart';

void main() {
  // model
  var grid = new Grid(3, 3);
  for (Cell c in grid.cells) assert(c.text == null);
  // view
  var canvas = querySelector('#canvas');
  new Surface(canvas).draw();
}


