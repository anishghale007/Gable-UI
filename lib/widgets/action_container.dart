import 'package:flutter/material.dart';

class ActionContainer extends StatelessWidget {
  final String image;

  ActionContainer({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFEBEBEB), width: 5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Image.asset('$image'),
        ),
      ),
    );
  }
}
