import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  final String image;
  final String text;

  ProfileContainer({
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Color(0xFFC0F3C6),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  '$image',
                  height: 45,
                  width: 45,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(width: 15),
          Text(
            '$text',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }
}
