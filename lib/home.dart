import 'package:flutter/material.dart';

// import 'package:evalaton/state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.screenSwitcher, {super.key});

  final void Function() screenSwitcher;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(128, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          const Text(
            "Some txt here is printed",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton(
            onPressed: screenSwitcher,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              minimumSize: const Size(150, 45),
            ),
            child: const Text("data"),
          )
        ],
      ),
    );
  }
}
