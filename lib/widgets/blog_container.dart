import 'package:flutter/material.dart';

const mainTextColor = Color(0xFF4BCC5A);

class BlogContainer extends StatelessWidget {
  final String text;
  final String image;

  BlogContainer(this.text, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 455,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(5, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            child: Image.asset('$image'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Expanded(
              child: Text(
                '$text',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20, color: Colors.grey.shade800),
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.transparent,
                    child: Image.network(
                        'https://templates.hibootstrap.com/gable/default/assets/img/home-1/blog/1.png'),
                  ),
                ),
                WidgetSpan(
                  child: SizedBox(width: 15),
                ),
                TextSpan(
                  text: 'Aikin Ward',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                WidgetSpan(
                  child: SizedBox(width: 140),
                ),
                TextSpan(
                  text: 'Read More >',
                  style: TextStyle(color: mainTextColor, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
