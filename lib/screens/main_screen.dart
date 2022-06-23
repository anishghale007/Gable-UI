import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gable_ui/widgets/action_button.dart';
import 'package:gable_ui/widgets/action_container.dart';
import 'package:gable_ui/widgets/blog_container.dart';
import 'package:gable_ui/widgets/category_container.dart';
import 'package:gable_ui/widgets/company_carousel.dart';
import 'package:gable_ui/widgets/contact_info.dart';
import 'package:gable_ui/widgets/job_container.dart';
import 'package:gable_ui/widgets/job_stats.dart';
import 'package:gable_ui/widgets/profile_carousel.dart';
import 'package:gable_ui/widgets/profile_container.dart';
import 'package:gable_ui/widgets/tab_bar.dart';
import 'package:gable_ui/widgets/vacancy_container.dart';
import 'package:gable_ui/widgets/website_info.dart';
import 'package:get/get.dart';

const mainTextColor = Color(0xFF4BCC5A);

enum Button { all, naya, featured, recent, fullTime, partTime }

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  Button selectedButton = Button.all;
  bool _toTheTopButton = false;
  late ScrollController _scrollController;
  bool status = false;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _toTheTopButton = true; // show the back-to-top button
          } else {
            _toTheTopButton = false; // hide the back-to-top button
          }
        });
      });


    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 3), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      drawer: TabBarWidget(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Image.asset('assets/images/logo.png', height: 40),
        ),
        actions: [
          Row(
            children: [
              FlutterSwitch(
                width: 70.0,
                height: 40.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                padding: 2.0,
                activeToggleColor: Color(0xFF6E40C9),
                inactiveToggleColor: Color(0xFF2F363D),
                activeSwitchBorder: Border.all(
                  color: Color(0xFF3C1E70),
                  width: 6.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: Color(0xFFD1D5DA),
                  width: 6.0,
                ),
                activeColor: Color(0xFF271052),
                inactiveColor: Colors.white,
                activeIcon: Icon(
                  Icons.nightlight_round,
                  color: Color(0xFFF8E3A1),
                ),
                inactiveIcon: Icon(
                  Icons.wb_sunny,
                  color: Color(0xFFFFDF5D),
                ),
                onToggle: (val) {
                  setState(() {
                    status = val;
                    print(val);
                    if (val == true) {
                      Get.changeTheme(ThemeData(
                        brightness: Brightness.dark,
                        scaffoldBackgroundColor: Colors.black,
                        backgroundColor: Colors.grey.shade900,
                        primaryColor: Colors.white,

                      ),);
                    } else {
                      Get.changeTheme(ThemeData(

                      ));
                    }
                  });
                },
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),
      body: ListView(
        controller: _scrollController,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/images/banner.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                  child: Container(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Get Your',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' Preferred',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: mainTextColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' Job',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Text(
                    'Jobs, Employment & Future Career Opportunites',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      border: Border.all(color: Colors.grey, width: 5),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Text(
                                'Job Title',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              ),
                              Spacer(),
                              Icon(
                                Icons.search,
                                color: mainTextColor,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Text(
                                'City or State',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              ),
                              Spacer(),
                              Icon(
                                Icons.location_on,
                                color: mainTextColor,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Text(
                                'Job Category',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: double.infinity,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Search'),
                            style: ElevatedButton.styleFrom(
                              primary: mainTextColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: status == true ? Colors.grey : Colors.white,
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: 10),
                JobContainer(
                    image: 'assets/images/jobsearch.png',
                    title: 'Jobseeker',
                    question: 'Looking For a Job ?',
                    action: 'Apply Now'),
                JobContainer(
                    image: 'assets/images/recruitment.png',
                    title: 'Recruiter',
                    question: 'Are You Recruiting ?',
                    action: 'Post a Job'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: status == true ? Theme.of(context).backgroundColor : Color(0xFFF7FAF7),
            height: 980,
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  'Choose Your Desire Category',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: status == true ? Colors.white : Colors.black,
                    fontSize: 20,
                  ),
                ),
                CategoryContainer(
                  image: 'assets/images/setting.png',
                  containerColor: Color(0xFFF5E0D6),
                  logoColor: Colors.redAccent,
                  text: 'Technical Support',
                ),
                CategoryContainer(
                  image: 'assets/images/layer.png',
                  containerColor: Color(0xFFDAD7F2),
                  logoColor: Colors.blue,
                  text: 'Business Development',
                ),
                CategoryContainer(
                  image: 'assets/images/house.png',
                  containerColor: Color(0xFFDBF5DE),
                  logoColor: Colors.green,
                  text: 'Real Estate Business',
                ),
                CategoryContainer(
                  image: 'assets/images/statistics.png',
                  containerColor: Color(0xFFECE5D1),
                  logoColor: Colors.orange,
                  text: 'Share Market Analysis',
                ),
              ],
            ),
          ),
          Container(
            height: 1280,
            width: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              children: [
                SizedBox(height: 35),
                Text(
                  'Recent Jobs',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 20,),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                      color: status == true ? Colors.grey.shade900 : Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(5, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedButton = Button.all;
                                  });
                                },
                                child: AnimatedContainer(
                                  height: 40,
                                  width: 65,
                                  duration: Duration(milliseconds: 250),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: selectedButton == Button.all
                                            ? Colors.transparent
                                            : Colors.grey),
                                    color: selectedButton == Button.all
                                        ? mainTextColor
                                        : Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'All',
                                        style: TextStyle(
                                          color: selectedButton == Button.all
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedButton = Button.naya;
                                  });
                                },
                                child: AnimatedContainer(
                                  height: 40,
                                  width: 70,
                                  duration: Duration(milliseconds: 250),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: selectedButton == Button.naya
                                            ? Colors.transparent
                                            : Colors.grey),
                                    color: selectedButton == Button.naya
                                        ? mainTextColor
                                        : Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'New',
                                        style: TextStyle(
                                          color: selectedButton == Button.naya
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedButton = Button.featured;
                                  });
                                },
                                child: AnimatedContainer(
                                  height: 40,
                                  width: 95,
                                  duration: Duration(milliseconds: 250),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: selectedButton == Button.featured
                                            ? Colors.transparent
                                            : Colors.grey),
                                    color: selectedButton == Button.featured
                                        ? mainTextColor
                                        : Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Featured',
                                        style: TextStyle(
                                          color:
                                              selectedButton == Button.featured
                                                  ? Colors.white
                                                  : Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedButton = Button.recent;
                                });
                              },
                              child: AnimatedContainer(
                                height: 40,
                                width: 90,
                                duration: Duration(milliseconds: 250),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: selectedButton == Button.recent
                                          ? Colors.transparent
                                          : Colors.grey),
                                  color: selectedButton == Button.recent
                                      ? mainTextColor
                                      : Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Recent',
                                      style: TextStyle(
                                        color: selectedButton == Button.recent
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedButton = Button.fullTime;
                                });
                              },
                              child: AnimatedContainer(
                                height: 40,
                                width: 100,
                                duration: Duration(milliseconds: 250),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: selectedButton == Button.fullTime
                                          ? Colors.transparent
                                          : Colors.grey),
                                  color: selectedButton == Button.fullTime
                                      ? mainTextColor
                                      : Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Full Time',
                                      style: TextStyle(
                                        color: selectedButton == Button.fullTime
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedButton = Button.partTime;
                                });
                              },
                              child: AnimatedContainer(
                                height: 40,
                                width: 100,
                                duration: Duration(milliseconds: 250),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: selectedButton == Button.partTime
                                          ? Colors.transparent
                                          : Colors.grey),
                                  color: selectedButton == Button.partTime
                                      ? mainTextColor
                                      : Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Part Time',
                                      style: TextStyle(
                                        color: selectedButton == Button.partTime
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                VacancyContainer(
                  image: 'assets/images/job1.png',
                  jobTitle: 'UI/UX Designer',
                  website: 'Winbrans.com',
                  salary: '\$20k - \$25k',
                  location: 'Location 210-27 Quadra, \n'
                      '     Marker Street, Victoria \n'
                      '     Canada',
                  action: 'Apply',
                  jobType: 'Full Time',
                ),
                VacancyContainer(
                  image: 'assets/images/job2.png',
                  jobTitle: 'Android Developer',
                  website: 'Infiniza.com',
                  salary: '\$20k - \$25k',
                  location: 'Location 210-27 Quadra, \n'
                      '     Marker Street, Victoria \n'
                      '     Canada',
                  action: 'Apply',
                  jobType: 'Part Time',
                ),
                VacancyContainer(
                  image: 'assets/images/job3.png',
                  jobTitle: 'Senior Manager',
                  website: 'Giovibo.com',
                  salary: '\$20k - \$25k',
                  location: 'Location 210-27 Quadra, \n'
                      '     Marker Street, Victoria \n'
                      '     Canada',
                  action: 'Apply',
                  jobType: 'Intern',
                ),
                VacancyContainer(
                  image: 'assets/images/job4.png',
                  jobTitle: 'Product Designer',
                  website: 'Bizotic.com',
                  salary: '\$20k - \$25k',
                  location: 'Location 210-27 Quadra, \n'
                      '     Marker Street, Victoria \n'
                      '     Canada',
                  action: 'Apply',
                  jobType: 'Part Time',
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 17,
                      ),
                      backgroundColor: Color(0xFFEBEBEB),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Color(0xFFEBEBEB),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Color(0xFFEBEBEB),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Color(0xFFEBEBEB),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 17,
                      ),
                      backgroundColor: Color(0xFFEBEBEB),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 650,
            width: MediaQuery.of(context).size.width,
            color: status == true ? Colors.grey.shade900 : mainTextColor,
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 25),
                    ActionContainer(image: 'assets/images/approval.png'),
                    SizedBox(height: 15),
                    Text(
                      'Register Your Account',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 25),
                    ActionContainer(image: 'assets/images/cv.png'),
                    SizedBox(height: 15),
                    Text(
                      'Upload Your Resume',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 25),
                    ActionContainer(
                        image: 'assets/images/customer-service.png'),
                    SizedBox(height: 15),
                    Text(
                      'Apply for Dream Job',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 55),
                Column(
                  children: [
                    ActionButton(text: 'Create Your Profile'),
                    SizedBox(height: 10),
                    ActionButton(text: 'Upload Your CV'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            height: 1480,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Container(
                    child: Image.asset(
                      'assets/images/home1.jpg',
                      fit: BoxFit.cover,
                    ),
                    height: 500,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    child: Image.asset('assets/images/home2.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: mainTextColor,
                      border: Border.all(color: Colors.white70, width: 5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '100% Trusted',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Trusted & Popular Job Portal',
                          style: TextStyle(
                              color: status == true ? Colors.white : Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Quis ipsum suspendisse ultrices gravida. Risus '
                          ' commodo viverra maecenas accumsan lacus vel '
                          ' facilisis. Lorem ipsum dolor sit amet, consectetur.',
                          style: TextStyle(color: status == true ? Colors.white : Colors.black, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    JobStats(totalNumber: '14 K+', title: 'Job Available'),
                    JobStats(totalNumber: '18 K+', title: 'Submitted CV'),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    JobStats(totalNumber: '10 K+', title: 'Registered Company'),
                    JobStats(totalNumber: '55 K+', title: 'Appointed to Job'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 390,
            width: double.infinity,
            color: status == true ? Colors.grey.shade900 : Color(0xFFEBEBEB),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  'Popular Companies',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 30),
                CompanyCarousel(),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 3410,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Container(
                    child: Image.asset(
                      'assets/images/profile1.jpg',
                      fit: BoxFit.cover,
                    ),
                    height: 400,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Container(
                    height: 400,
                    width: double.infinity,
                    child: Image.asset('assets/images/profile2.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Why We are Most Popular',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Expanded(
                    child: Text(
                      'Quis ipsum suspendisse ultrices gravida. Risus '
                      ' commodo viverra maecenas accumsan lacus vel '
                      'facilisis. Quis ipsum suspendisse ultrices gravida ',
                      style: TextStyle(
                          color: Colors.grey,
                          wordSpacing: 8,
                          height: 1.5,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ProfileContainer(
                  image: 'assets/images/jobsearch.png',
                  text: 'Trusted & Quality Job',
                ),
                ProfileContainer(
                  image: 'assets/images/no-money.png',
                  text: 'No Extra Charge',
                ),
                ProfileContainer(
                  image: 'assets/images/enterprise.png',
                  text: 'Top Companies',
                ),
                ProfileContainer(
                  image: 'assets/images/employee.png',
                  text: 'International Job',
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Featured Profile',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ProfileCarousel(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Our Latest Blogs',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                BlogContainer('The next generation IT will change the world',
                    'assets/images/blog1.jpg'),
                SizedBox(height: 50),
                BlogContainer('It is the most important sector in the world',
                    'assets/images/blog2.jpg'),
                SizedBox(height: 50),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: status == true ? Colors.grey.shade900 : Colors.white,
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
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Subscribe Newsletter',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 20,),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 230,
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              border: Border.all(
                                color: mainTextColor,
                                width: 0.5,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [Text('Enter Your Email', style: TextStyle(color: Colors.grey.shade800),),],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(color: mainTextColor),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Subscribe',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1200,
            color: mainTextColor,
            child: Column(
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit,'
                          ' sed do eiusmod tempor incididunt ut labore et dolore'
                          ' magna aliqua.',
                          style: TextStyle(
                              color: Colors.white, fontSize: 15, height: 2),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.youtube,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 23),
                      FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 23),
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 23),
                      FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Category',
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Colors.white, fontSize: 20),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                ),
                SizedBox(height: 10),
                WebsiteInfo(info: 'Development'),
                WebsiteInfo(info: 'Business'),
                WebsiteInfo(info: 'Tech & IT'),
                WebsiteInfo(info: 'Finance'),
                WebsiteInfo(info: 'Networking'),
                SizedBox(height: 20),
                Text(
                  'Quick Links',
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Colors.white, fontSize: 20),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                ),
                SizedBox(height: 10),
                WebsiteInfo(info: 'Home'),
                WebsiteInfo(info: 'About Us'),
                WebsiteInfo(info: 'Blogs'),
                WebsiteInfo(info: 'Companies'),
                WebsiteInfo(info: 'Testimonials'),
                SizedBox(height: 20),
                Text(
                  'Find Us',
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Colors.white, fontSize: 20),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                ),
                SizedBox(height: 10),
                ContactInfo(
                    icon: Icons.location_on,
                    text: '28/A Street, New York City'),
                ContactInfo(icon: Icons.phone, text: '+88 0123 456 789'),
                ContactInfo(
                    icon: Icons.alternate_email_outlined,
                    text: 'hello@gable.com'),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Text(
                    'Copyright © 2022 Gable. Designed By HiBootstrap',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Terms & Conditions \- Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: _toTheTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              backgroundColor: Colors.grey.shade800,
              child: Icon(
                Icons.keyboard_arrow_up_outlined,
                size: 50,
                color: Colors.white,
              ),
            ),
    );
  }
}
