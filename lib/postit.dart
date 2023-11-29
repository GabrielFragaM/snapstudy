import 'package:flutter/material.dart';

class PaperCutPostIt extends StatelessWidget {
  final String text;
  final Color? color;

  const PaperCutPostIt({Key? key, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: color ?? Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            spreadRadius: 1,
            blurRadius: 4.5,
            offset: const Offset(2, 3),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      ),
    );
  }
}
