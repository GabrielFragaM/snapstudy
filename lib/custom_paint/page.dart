import 'package:flutter/material.dart';

class PagePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Step 1
    final paintGrey = Paint()..color = Colors.white;
    var rectRed =
        RRect.fromLTRBR(0, 0, size.width, size.height, const Radius.circular(8.0));
    canvas.drawRRect(rectRed, paintGrey);

    //Step 2
    final paintWhite = Paint()..color = Colors.white;
    var rectWhite =
        RRect.fromLTRBR(5, 0, size.width, size.height, const Radius.circular(8.0));
    canvas.drawRRect(rectWhite, paintWhite);

    double height = (size.height / 1.8);
    //Step 3
    final paintDarkGrey = Paint()
      ..color = const Color(0xffa1a1a1)
      ..strokeWidth = 0.7;

    double index = 0.1;
    for(var _ in List.generate(17, (index) => null)){
      canvas.drawLine(Offset(0, height * index),
          Offset(size.width, height * index), paintDarkGrey);
      index = index + 0.1;
    }

    //Step 4
    final paintPink = Paint()
      ..color = Colors.pinkAccent
      ..strokeWidth = 1;
    canvas.drawLine(Offset((size.width - 90) * .1, 0),
        Offset((size.width - 90) * .1, size.height), paintPink);
  }

  @override
  bool shouldRepaint(PagePainter oldDelegate) {
    return false;
  }

  @override
  bool shouldRebuildSemantics(PagePainter oldDelegate) {
    return false;
  }
}
