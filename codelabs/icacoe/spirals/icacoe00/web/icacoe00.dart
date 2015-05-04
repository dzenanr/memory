import 'dart:html';

init() {
  var canvas = querySelector('#canvas');
  var context = canvas.getContext("2d");
  drawRectangle(context, 0, 0, canvas.width, canvas.height);
}

drawRectangle(context, x, y, width, height) {
  context.rect(x, y, width, height);
  context.stroke();
}

void main() {
  init();
}


