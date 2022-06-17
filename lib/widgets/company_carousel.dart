import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

const mainTextColor = Color(0xFF4BCC5A);

final List<String> imgList = [
  'assets/images/company1.png',
  'assets/images/company2.png',
  'assets/images/company3.png',
  'assets/images/job4.png',
];

final List<String> companyList = [
  'Bizotic.com',
  'Winbrans.com',
  'Infiniza.com',
  'Glovibo.com',
];

final List<String> locationList = [
  'Washington, New York',
  'North Streeth, California',
  'Barming Road, UK',
  'Brooklyn, New York',
];

class CompanyCarousel extends StatefulWidget {
  const CompanyCarousel({Key? key}) : super(key: key);

  @override
  State<CompanyCarousel> createState() => _CompanyCarouselState();
}

class _CompanyCarouselState extends State<CompanyCarousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imgList
              .map(
                (item) => Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(item),
                      if (item == 'assets/images/company1.png')
                        Column(
                          children: [
                            Text(
                              '${companyList[0]}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                      size: 17,
                                    ),
                                  ),
                                  TextSpan(
                                    text: locationList[0],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      if (item == 'assets/images/company2.png')
                        Column(
                          children: [
                            Text(
                              '${companyList[1]}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                      size: 17,
                                    ),
                                  ),
                                  TextSpan(
                                    text: locationList[1],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      if (item == 'assets/images/company3.png')
                        Column(
                          children: [
                            Text(
                              '${companyList[2]}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                      size: 17,
                                    ),
                                  ),
                                  TextSpan(
                                    text: locationList[2],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      if (item == 'assets/images/job4.png')
                        Column(
                          children: [
                            Text(
                              '${companyList[3]}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                      size: 17,
                                    ),
                                  ),
                                  TextSpan(
                                    text: locationList[3],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: mainTextColor, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Hiring'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        SizedBox(height: 20 ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (mainTextColor)
                        .withOpacity(_current == entry.key ? 0.9 : 0.3)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
