import 'package:flutter/material.dart';

const factors = [1, 3, 5, 15, 17, 51, 85, 255];
// const String txt = "100 110 010 011 001 101";
const Map<String, List<num>> txts = {
  "r": [1, 1, 0, 0, 0, 1, 1],
  "g": [0, 1, 1, 1, 0, 0, 0],
  "b": [0, 0, 0, 1, 1, 1, 0]
};

List<Color> cols = [];
List<List<int>> rgbs = [];

int r = 255, g = 0, b = 0;
var x = 0;
String? chosen;

void chooser(i, col, str) {
  if ((txts[str]![i] * 255) - col != 0) {
    chosen = str;
  }
}

void colsGenerator() {
  while (x < txts['r']!.length) {
    chooser(x, r, 'r');
    chooser(x, g, 'g');
    chooser(x, b, 'b');
    for (int i = 0; i < 15; i++) {
      if (chosen == 'r') {
        if ((txts[chosen]![x] * 255) - r < 0) {
          cols.add(Color.fromARGB(255, r, g, b));
          r -= factors[4];
        } else {
          cols.add(Color.fromARGB(255, r, g, b));
          r += factors[4];
        }
      }
      if (chosen == 'g') {
        if ((txts[chosen]![x] * 255) - g < 0) {
          cols.add(Color.fromARGB(255, r, g, b));
          g -= factors[4];
        } else {
          cols.add(Color.fromARGB(255, r, g, b));
          g += factors[4];
        }
      }
      if (chosen == 'b') {
        if ((txts[chosen]![x] * 255) - b < 0) {
          cols.add(Color.fromARGB(255, r, g, b));
          b -= factors[4];
        } else {
          cols.add(Color.fromARGB(255, r, g, b));
          b += factors[4];
        }
      }
      rgbs.add([r, g, b]);
    }
    x++;
  }
}

List<Color> getColors() {
  colsGenerator();
  return cols;
}
