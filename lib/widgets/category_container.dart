import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String image;
  final dynamic containerColor;
  final dynamic logoColor;
  final String text;

  CategoryContainer({
    required this.image,
    required this.containerColor,
    required this.logoColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(5, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    '$image',
                    color: logoColor,
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ),
            Text(
              '$text',
              style: TextStyle(fontFamily: 'Poppins'),
            ),
          ],
        ),
      ),
    );
  }
}
