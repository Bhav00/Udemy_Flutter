import 'dart:math';

class RandMat {
  int? _val;
  int? x;
  List<List<int>>? mat;
  List<int>? list;

  void initialize() {
    mat = [
      [-1, -1, -1, -1, -1],
      [-1, -1, -1, -1, -1],
      [-1, -1, -1, -1, -1],
      [-1, -1, -1, -1, -1],
      [-1, -1, -1, -1, -1]
    ];
    list = [for (int i = 1; i < 26; i++) i];
    x = 25;
  }

  void generateMat() {
    for (int r = 0; r < 5; r++) {
      for (int c = 0; c < 5; c++) {
        _val = Random().nextInt(x!);
        mat![r][c] = list![_val!];
        list!.remove(list![_val!]);
        x = x! - 1;
      }
    }
  }

  List<List<int>> getMat() {
    initialize();
    generateMat();
    return mat!;
  }

  String listprinter() {
    String l = '';
    for (int r = 0; r < 5; r++) {
      for (int c = 0; c < 5; c++) {
        l += mat![r][c].toString();
        l += ' ';
      }
    }
    return l;
  }
}
