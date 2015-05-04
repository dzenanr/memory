part of plane;

class Cell {
  int row, column;
  String text;

  Grid grid;

  Cell(this.grid, this.row, this.column);

  bool intersects(num row, num column) {
    if (0 <= row    && row    < grid.height &&
        0 <= column && column < grid.width) {
      if (this.row == row && this.column == column) {
        return true;
      }
    }
    return false;
  }
}

class Cells {
  List<Cell> _list;

  Cells() {
    _list = new List<Cell>();
  }

  add(Cell cell) {
    _list.add(cell);
  }

  Iterator get iterator => _list.iterator;

  bool every(bool f(Cell cell)) => _list.every(f);
}