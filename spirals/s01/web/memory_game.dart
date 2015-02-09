import 'dart:html';

import 'package:memory/memory.dart';

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = querySelector('#canvas');
  new Board(canvas);
}


