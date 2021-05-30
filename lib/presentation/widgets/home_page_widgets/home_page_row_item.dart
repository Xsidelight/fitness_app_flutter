import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowItem extends StatelessWidget {
  final String? name;
  final String? number;
  final String? type;

  RowItem({this.name, this.number, this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 80,
      child: LimitedBox(
        child: Column(
          children: [
            Text(
              name!,
              style: TextStyle(color: Color(0xffBDBDBD)),
            ),
            SizedBox(
              height: 3,
            ),
            RichText(
              text: TextSpan(
                text: number,
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 25),
                children: [
                  TextSpan(
                    text: type,
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
              // "$number $type",
              // style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
