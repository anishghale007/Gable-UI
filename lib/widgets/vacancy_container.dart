import 'package:flutter/material.dart';



const mainTextColor = Color(0xFF4BCC5A);

class VacancyContainer extends StatelessWidget {

  final String image;
  final String jobTitle;
  final String website;
  final String salary;
  final String location;
  final String action;
  final String jobType;

  VacancyContainer({
    required this.image,
    required this.jobTitle,
    required this.website,
    required this.salary,
    required this.location,
    required this.action,
    required this.jobType,
});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.5)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.symmetric(
                      vertical: 60, horizontal: 10),
                  child: Image.asset('$image'),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '$jobTitle',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '$website',
                  style:
                  TextStyle(color: mainTextColor, fontSize: 18),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.attach_money,
                            color: mainTextColor, size: 18),
                      ),
                      TextSpan(
                          text: '$salary',
                          style: TextStyle(
                              color: Colors.grey, fontSize: 15)),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.location_on,
                            color: mainTextColor, size: 18),
                      ),
                      TextSpan(
                          text: '$location',
                          style: TextStyle(
                              color: Colors.grey, fontSize: 15),),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: mainTextColor)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$action',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(color: mainTextColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$jobType',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
