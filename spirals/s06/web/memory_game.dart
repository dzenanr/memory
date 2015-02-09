import 'dart:html';

import 'package:memory/memory.dart';

CanvasElement canvas;

void main() {
  canvas = querySelector('#canvas');
  ButtonElement play = querySelector('#play');
  play.onClick.listen(playAgain);
  new Board(canvas, new Memory(4));
}

playAgain(Event e) {
  window.location.reload();
}


