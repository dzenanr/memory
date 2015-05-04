part of plane;

class Cell {
  int row, column;
  String text;

  Cell(this.row, this.column);
}

class Cells {
  List _list;

  Cells() {
    _list = new List();
  }

  add(Cell cell) {
    _list.add(cell);
  }

  Iterator get iterator => _list.iterator;
}