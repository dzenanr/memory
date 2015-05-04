part of plane;

class Grid {
  int width;
  int height;

  var cells = new Cells();

  Grid(this.width, this.height) {
    var cell;
    for (var x = 0; x < width; x++) {
      for (var y = 0; y < height; y++) {
        cell = new Cell(x, y);
        cells.add(cell);
      }
    }
  }
}

