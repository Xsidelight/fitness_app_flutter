import 'package:flutter/material.dart';

class TxtButton extends StatefulWidget {
  final String title;

  const TxtButton({Key? key, required this.title}) : super(key: key);

  @override
  _TxtButtonState createState() => _TxtButtonState();
}

class _TxtButtonState extends State<TxtButton> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.purple : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              // spreadRadius: ,
              blurRadius: 3,
              color: Colors.grey.shade300,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: TextButton(
          onPressed: () {
            setState(() {
              isSelected = !isSelected;
            });
            print(isSelected);
          },
          child: Text(
            widget.title,
            style: TextStyle(color: isSelected ? Colors.white : Colors.grey),
          ),
        ),
      ),
    );
  }
}
