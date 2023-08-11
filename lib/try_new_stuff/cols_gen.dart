import 'package:flutter/material.dart';

class ColsGen {
  ColsGen();
  final Map<String, List<num>> txts = {
    "r": [1, 1, 0, 0, 0, 1, 1],
    "g": [0, 1, 1, 1, 0, 0, 0],
    "b": [0, 0, 0, 1, 1, 1, 0]
  };
  final factors = [1, 3, 5, 15, 17, 51, 85, 255];

  List<Color> cols = [];
  String? chosen;
  int alpha = 175, r = 255, g = 0, b = 0, idx = 0, fact = 5;

  void chooser(i, col, str) {
    if ((txts[str]![i] * 255) - col != 0) {
      chosen = str;
    }
  }

  void something() {
    while (idx < txts['r']!.length) {
      chooser(idx, r, 'r');
      chooser(idx, g, 'g');
      chooser(idx, b, 'b');
      for (int i = 0; i < 255 / fact; i++) {
        if (chosen == 'r') {
          if ((txts[chosen]![idx] * 255) - r < 0) {
            cols.add(Color.fromARGB(alpha, r, g, b));
            r -= factors[fact];
          } else {
            cols.add(Color.fromARGB(alpha, r, g, b));
            r += factors[fact];
          }
        }
        if (chosen == 'g') {
          if ((txts[chosen]![idx] * 255) - g < 0) {
            cols.add(Color.fromARGB(alpha, r, g, b));
            g -= factors[fact];
          } else {
            cols.add(Color.fromARGB(alpha, r, g, b));
            g += factors[fact];
          }
        }
        if (chosen == 'b') {
          if ((txts[chosen]![idx] * 255) - b < 0) {
            cols.add(Color.fromARGB(alpha, r, g, b));
            b -= factors[fact];
          } else {
            cols.add(Color.fromARGB(alpha, r, g, b));
            b += factors[fact];
          }
        }
      }
      idx++;
    }
  }

  List<Color> getColors() {
    cols = [];
    something();
    return cols;
  }
}
