part of geo;

class Surface {
  num width, height; // in pixels

  CanvasRenderingContext2D context;

  Surface(canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
  }

  draw() {
    new Rectangle(this, 0, 0, width, height).draw();
  }
}