import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {

  final String text;
  final dynamic icon;

  ContactInfo({required this.icon, required this.text});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                          child: Icon(icon, color: Colors.white, size: 20,),),
                      TextSpan(
                        text: '   $text',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),),
            ],
          ),
        ],
      ),
    );
  }
}
