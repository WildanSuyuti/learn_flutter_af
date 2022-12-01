class Shape {
  static const double phi = 22 / 7;
  final double luas;

  Shape(this.luas);
}

_main() {
  var shape = Shape(10);
  Shape shape2 = Shape(13);

  shape.luas;
  Shape.phi;
}
