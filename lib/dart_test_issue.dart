int calculate() {
  return 6 * 7;
}

late int outerA;
late int outerB;
late int outerLate;

void calculateOuterLate() {
  outerA = 1;
  outerB = 1;
  outerLate = outerA + outerB;
}

void checkOuterLate() {
  assert(outerLate == 2);
}

void main(List<String> args) {
  late int a;
  late int b;
  late int innerLate;

  void calculateInnerLate() {
    a = 1;
    b = 2;
    innerLate = a + b;
  }

  void checkInnerLate() {
    assert(innerLate == 3);
  }

  calculateOuterLate();
  checkOuterLate();
  calculateInnerLate();
  checkInnerLate();
}
