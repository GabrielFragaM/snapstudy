import 'package:flutter/material.dart';
import 'package:snapstudy/custom_paint/page.dart';

class NotebookPage extends StatelessWidget {
  const NotebookPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return CustomPaint(
      foregroundPainter: PagePainter(),
      child: Container(
        height: height / 2.5,
        width: width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              spreadRadius: 3,
              blurRadius: 9,
              offset: const Offset(3, 6),
            ),
          ],
        ),
      ),
    );
  }
}
