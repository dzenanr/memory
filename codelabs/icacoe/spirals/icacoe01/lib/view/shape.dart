part of geo;

class Rectangle {
  num x, y, width, height;
  Surface surface;

  Rectangle(this.surface, this.x, this.y, this.width, this.height);

  draw() {
    surface.context
        ..rect(x, y, width, height)
        ..stroke();
  }
}