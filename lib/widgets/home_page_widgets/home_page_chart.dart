import 'package:flutter/material.dart';

class HomePageChart extends CustomPainter {
  // @override
  // void paint(Canvas canvas, Size size) {
  //   final p1 = Offset(0, 0);
  //   final p2 = Offset(300, 0);
  //   final p3 = Offset(0, 50);
  //   final p4 = Offset(300, 50);
  //   final p5 = Offset(0, 100);
  //   final p6 = Offset(300, 100);
  //   final p7 = Offset(0, 150);
  //   final p8 = Offset(300, 150);
  //   final paint = Paint()..color = Colors.white..strokeWidth = 0.5;
  //   canvas.drawLine(p1, p2, paint);
  //   canvas.drawLine(p3, p4, paint);
  //   canvas.drawLine(p5, p6, paint);
  //   canvas.drawLine(p7, p8, paint);
  //   canvas.drawLine(p7, p8, paint);
  //   final p9 = Offset(0, 200);
  //   final p10 = Offset(50, 125);
  //   final p11 = Offset(50, 125);
  //   final p12 = Offset(100, 150);
  //   final p13 = Offset(100, 150);
  //   final p14 = Offset(150, 50);
  //   final p15 = Offset(150, 50);
  //   final p16 = Offset(200, 130);
  //   final p17 = Offset(200, 130);
  //   final p18 = Offset(250, 90);
  //   final p19 = Offset(250, 90);
  //   final p20 = Offset(300, 130);
  //   final paint2 = Paint()..color = Colors.white..strokeWidth = 2;
  //   canvas.drawLine(p9, p10, paint2);
  //   canvas.drawLine(p11, p12, paint2);
  //   canvas.drawLine(p13, p14, paint2);
  //   canvas.drawLine(p15, p16, paint2);
  //   canvas.drawLine(p17, p18, paint2);
  //   canvas.drawLine(p19, p20, paint2);
  // }

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, 120)
      ..lineTo(50, 40)
      ..lineTo(100, 85)
      ..lineTo(150, 10)
      ..lineTo(200, 60)
      ..lineTo(250, 40)
      ..lineTo(300, 60);
    // ..quadraticBezierTo(200, 0, 150, 100);
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
