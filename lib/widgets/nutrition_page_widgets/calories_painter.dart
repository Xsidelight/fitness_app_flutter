import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math.dart' as vm;

class CaloriesPainter extends CustomPainter {
  final double strokeWidth;
  final double progress;
  final Color colorStart;
  final Color colorEnd;

  CaloriesPainter(
      {required this.colorStart,
      required this.colorEnd,
      required this.strokeWidth,
      required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(30, 5, 200, 200);
    final rectBackground = Rect.fromLTWH(30, 5, 200, 200);

    Paint paintBackground = Paint()
      ..color = Color(0xFFE2EDF1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    Paint paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topLeft,
        colors: [colorStart, colorEnd],
      ).createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      rectBackground,
      vm.radians(180),
      vm.radians(180),
      false,
      paintBackground,
    );

    canvas.drawArc(
      rect,
      vm.radians(180),
      vm.radians(360 * progress),
      false,
      paint,
    );

    // Calories Number and Text
    final textSpanCalories = TextSpan(
        text: "Calories Left",
        style: GoogleFonts.raleway(color: Colors.deepPurple, fontSize: 12));

    final textSpanCaloriesNum = TextSpan(
        text: "987",
        style: GoogleFonts.raleway(color: Colors.deepPurple, fontSize: 34));

    final textPainterCalories = TextPainter(
        textAlign: TextAlign.center,
        text: textSpanCalories,
        textDirection: TextDirection.ltr);

    final textPainterCaloriesNum = TextPainter(
        textAlign: TextAlign.center,
        text: textSpanCaloriesNum,
        textDirection: TextDirection.ltr);

    textPainterCalories.layout(minWidth: 0, maxWidth: size.width);
    textPainterCaloriesNum.layout(minWidth: 0, maxWidth: size.width);

    final offsetTxtCalories = Offset(100, 90);
    final offsetTxtCaloriesNum = Offset(100, 45);

    textPainterCalories.paint(canvas, offsetTxtCalories);
    textPainterCaloriesNum.paint(canvas, offsetTxtCaloriesNum);
  }

  @override
  bool shouldRepaint(CaloriesPainter oldDelegate) {
    if (oldDelegate.progress != progress ||
        oldDelegate.strokeWidth != strokeWidth) {
      return true;
    }
    return false;
  }
}
