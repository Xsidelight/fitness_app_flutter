import 'package:flutter/material.dart';

class HomePageChart extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(0, 0);
    final p2 = Offset(300, 0);
    final p3 = Offset(0, 30);
    final p4 = Offset(300, 30);
    final p5 = Offset(0, 60);
    final p6 = Offset(300, 60);
    final p7 = Offset(0, 90);
    final p8 = Offset(300, 90);
    final paintLines = Paint()
      ..color = Colors.grey
      ..strokeWidth = 0.5;
    canvas.drawLine(p1, p2, paintLines);
    canvas.drawLine(p3, p4, paintLines);
    canvas.drawLine(p5, p6, paintLines);
    canvas.drawLine(p7, p8, paintLines);
    // Calories
    final textStyle = TextStyle(
      color: Color(0xffBDBDBD),
      fontSize: 14,
    );
    final textSpan3 = TextSpan(
      text: '3',
      style: textStyle,
    );
    final textSpan2 = TextSpan(
      text: '2',
      style: textStyle,
    );
    final textSpan1 = TextSpan(
      text: '1',
      style: textStyle,
    );
    final textSpan0 = TextSpan(
      text: '0',
      style: textStyle,
    );
    final textPainter3 = TextPainter(
      text: textSpan3,
      textDirection: TextDirection.ltr,
    );
    final textPainter2 = TextPainter(
      text: textSpan2,
      textDirection: TextDirection.ltr,
    );
    final textPainter1 = TextPainter(
      text: textSpan1,
      textDirection: TextDirection.ltr,
    );
    final textPainter0 = TextPainter(
      text: textSpan0,
      textDirection: TextDirection.ltr,
    );
    textPainter3.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainter2.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainter1.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainter0.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final offset3 = Offset(-10, 0);
    final offset2 = Offset(-10, 30);
    final offset1 = Offset(-10, 60);
    final offset0 = Offset(-10, 90);
    textPainter3.paint(canvas, offset3);
    textPainter2.paint(canvas, offset2);
    textPainter1.paint(canvas, offset1);
    textPainter0.paint(canvas, offset0);

    // WeekDays
    final textSpanMon = TextSpan(
      text: 'Mon',
      style: textStyle,
    );
    final textSpanTue = TextSpan(
      text: 'Tue',
      style: textStyle,
    );
    final textSpanWed = TextSpan(
      text: 'Wed',
      style: textStyle,
    );
    final textSpanThu = TextSpan(
      text: 'Thu',
      style: textStyle,
    );
    final textSpanFri = TextSpan(
      text: 'Fri',
      style: textStyle,
    );
    final textSpanSat = TextSpan(
      text: 'Sat',
      style: textStyle,
    );
    final textSpanSun = TextSpan(
      text: 'Sun',
      style: textStyle,
    );
    final textPainterMon = TextPainter(
      textAlign: TextAlign.center,

      text: textSpanMon,
      textDirection: TextDirection.ltr,
    );
    final textPainterTue = TextPainter(
      text: textSpanTue,
      textDirection: TextDirection.ltr,
    );
    final textPainterWed = TextPainter(
      text: textSpanWed,
      textDirection: TextDirection.ltr,
    );
    final textPainterThu = TextPainter(
      text: textSpanThu,
      textDirection: TextDirection.ltr,
    );
    final textPainterFri = TextPainter(
      text: textSpanFri,
      textDirection: TextDirection.ltr,
    );
    final textPainterSat = TextPainter(
      text: textSpanSat,
      textDirection: TextDirection.ltr,
    );
    final textPainterSun = TextPainter(
      text: textSpanSun,
      textDirection: TextDirection.ltr,
    );
    textPainterMon.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainterTue.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainterWed.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainterThu.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainterFri.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainterSat.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainterSun.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final offsetMon = Offset(0, 100);
    final offsetTue = Offset(40, 100);
    final offsetWed = Offset(80,100);
    final offsetThu = Offset(130, 100);
    final offsetFri = Offset(180, 100);
    final offsetSat = Offset(230, 100);
    final offsetSun = Offset(280, 100);
    textPainterMon.paint(canvas, offsetMon);
    textPainterTue.paint(canvas, offsetTue);
    textPainterWed.paint(canvas, offsetWed);
    textPainterThu.paint(canvas, offsetThu);
    textPainterFri.paint(canvas, offsetFri);
    textPainterSat.paint(canvas, offsetSat);
    textPainterSun.paint(canvas, offsetSun);


    // Line chart line
    final path = Path()
      ..moveTo(0, 90)
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
