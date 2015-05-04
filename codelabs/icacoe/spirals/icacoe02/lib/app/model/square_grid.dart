part of icacoe;

class SquareGrid extends Grid {
  int length;

  SquareGrid(int l) : length = l, super(l, l);
}