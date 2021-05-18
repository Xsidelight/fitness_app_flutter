import 'package:flutter/material.dart';

class WorkoutListItem extends StatelessWidget {
  const WorkoutListItem(
      {Key? key, this.txtLevel, this.exerciseName, this.exerciseProgress})
      : super(key: key);

  final String? txtLevel;
  final String? exerciseName;
  final String? exerciseProgress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        gradient: LinearGradient(
            colors: [Theme.of(context).primaryColor, Colors.purple.shade50]),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 21,
            width: 50,
            decoration: BoxDecoration(
              color: Color(0xff9DC4CF),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Center(
                child: Text(
              '${txtLevel!}',
              style: TextStyle(color: Colors.white, fontSize: 10),
            )),
          ),
          Text(
            '${exerciseName!}',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            '${exerciseProgress!}',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
