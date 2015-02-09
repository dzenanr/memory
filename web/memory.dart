import 'dart:html';

import 'package:memory/memory.dart';

void main() {
  CanvasElement canvas = querySelector('#canvas');
  ButtonElement play = querySelector('#play');
  play.onClick.listen((Event e) {
    window.location.reload();
  });
  new Board(canvas, new Memory(4));
}




