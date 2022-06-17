import 'package:flutter/material.dart';

const mainTextColor = Color(0xFF4BCC5A);

class JobStats extends StatelessWidget {

  final String totalNumber;
  final String title;

  JobStats({
    required this.totalNumber,
    required this.title,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$totalNumber',
          style: TextStyle(
              color: mainTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        SizedBox(height: 10),
        Text('$title')
      ],
    );
  }
}
