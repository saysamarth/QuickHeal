import 'package:flutter/material.dart';

class Griditem extends StatelessWidget {
  const Griditem({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 171, 22, 11).withOpacity(0.85),
            const Color.fromARGB(255, 110, 16, 13).withOpacity(0.75),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}
