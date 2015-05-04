part of geo;

class Circle {
  num x, y, radius;
  Surface surface;

  Circle(this.surface, this.x, this.y, this.radius);

  draw() {
    surface.context
        ..arc(x, y, radius, 0, PI * 2)
        ..stroke();
  }
}

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

class Square extends Rectangle {
  num length;

  Square(Surface surface, num x, num y, num l) :
    length = l, super(surface, x, y, l, l);
}

class Line {
  num x1, y1, x2, y2;
  Surface surface;

  Line(this.surface, this.x1, this.y1, this.x2, this.y2);

  draw() {
    surface.context
        ..moveTo(x1, y1)
        ..lineTo(x2, y2)
        ..stroke();
  }
}