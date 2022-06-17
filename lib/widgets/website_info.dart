import 'package:flutter/material.dart';


class WebsiteInfo extends StatelessWidget {

  final String info;

  WebsiteInfo({required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text('>   $info', style: TextStyle(color: Colors.white, fontSize: 15),)
            ],
          ),
        ],
      ),
    );
  }
}
