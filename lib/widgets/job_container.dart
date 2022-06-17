import 'package:flutter/material.dart';

const mainTextColor = Color(0xFF4BCC5A);

class JobContainer extends StatelessWidget {
  final String image;
  final String title;
  final String question;
  final String action;

  JobContainer({
    required this.image,
    required this.title,
    required this.question,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        color: mainTextColor,
        width: double.infinity,
        height: 150,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                '$image',
                height: 50,
                width: 50,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '$title',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '$question',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$action ->',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
