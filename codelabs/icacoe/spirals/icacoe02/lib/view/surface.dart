part of geo;

class Surface {
  num width, height; // in pixels

  Grid grid;

  CanvasElement canvas;
  CanvasRenderingContext2D context;

  Surface(this.grid, this.canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
  }

  clear() {
    new Rectangle(this, 0, 0, width, height).draw();
  }

  lines() {
    var wgap = width / grid.width;
    var hgap = height / grid.height;
    var x, y;
    for (var row = 1; row < grid.height; row++) {
      x = 0;
      y = hgap * row;
      new Line(this, x, y, x + width, y).draw();
    }
    for (var col = 1; col < grid.width; col++) {
      x = wgap * col;
      y = 0;
      new Line(this, x, y, x, y + height).draw();
    }
  }

  draw() {
    clear();
    lines();
  }
}