import 'package:flutter/material.dart';

const mainTextColor = Color(0xFF4BCC5A);

class ActionButton extends StatelessWidget {

  final String text;

  ActionButton({
    required this.text
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$text',
            style: TextStyle(
                color: mainTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
