import 'package:flutter/material.dart';
import 'package:evalaton/try_new_stuff/cols_gen.dart';

// may use these functions in the future.
// Or just some of the logic used in them

var cols = ColsGen().getColors();

class Listviewgradientoutput extends StatelessWidget {
  const Listviewgradientoutput({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // itemCount: (double.infinity).toInt(),
        itemBuilder: (_, data) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: cols[data % (cols.length - 1)],
        ),
        width: double.infinity,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    });
  }
}
