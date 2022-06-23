import 'package:flutter/material.dart';

const mainTextColor = Color(0xFF4BCC5A);

class TabBarWidget extends StatefulWidget {
  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {

  Color homeColor = Colors.black;
  Color jobColor = Colors.black;
  Color candidateColor = Colors.black;
  Color blogColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.black,
            child: Image.asset('assets/images/logo.png'),
          ),
          ExpansionTile(
              title: Text(
                'Home',
                style: TextStyle(color: homeColor, fontSize: 16),
              ),
            onExpansionChanged: (expanded) {
                setState(() {
                  if (expanded) {
                    homeColor = mainTextColor;
                  } else {
                    homeColor = Colors.black;
                  }
                });
            },
            iconColor: mainTextColor,
            childrenPadding: EdgeInsets.symmetric(horizontal: 15),
            children: [
              ListTile(
                title: Text('Home Page 1', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
              ListTile(
                title: Text('Home Page 2', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
              ListTile(
                title: Text('Home Page 3', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
            ],
          ),
          ListTile(
            title: Text('About', style: TextStyle(color: Colors.black, fontSize: 16),),
          ),
          ExpansionTile(
              title: Text(
                'Jobs',
                style: TextStyle(color: jobColor, fontSize: 16),
              ),
            childrenPadding: EdgeInsets.symmetric(horizontal: 15),
            onExpansionChanged: (expanded) {
              setState(() {
                if (expanded) {
                  jobColor = mainTextColor;
                } else {
                  jobColor = Colors.black;
                }
              });
            },
            iconColor: mainTextColor,
            children: [
              ListTile(
                title: Text('Job List', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
              ListTile(
                title: Text('Favourite Jobs', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
              ListTile(
                title: Text('Job Details', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
              ListTile(
                title: Text('Post A Job', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              'Candidates',
              style: TextStyle(color: candidateColor, fontSize: 16),
            ),
            childrenPadding: EdgeInsets.symmetric(horizontal: 15),
            onExpansionChanged: (expanded) {
              setState(() {
                if (expanded) {
                  candidateColor = mainTextColor;
                } else {
                  candidateColor = Colors.black;
                }
              });
            },
            iconColor: mainTextColor,
            children: [
              ListTile(
                title: Text('Candidates List', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
              ListTile(
                title: Text('Candidates Details', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
              ListTile(
                title: Text('Single Resume', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
              ListTile(
                title: Text('Submit Resume', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              'Blogs',
              style: TextStyle(color: blogColor, fontSize: 16),
            ),
            childrenPadding: EdgeInsets.symmetric(horizontal: 15),
            onExpansionChanged: (expanded) {
              setState(() {
                if (expanded) {
                  blogColor = mainTextColor;
                } else {
                  blogColor = Colors.black;
                }
              });
            },
            iconColor: mainTextColor,
            children: [
              ListTile(
                title: Text('Blog', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
              ListTile(
                title: Text('Blog Details', style: TextStyle(color: Colors.black, fontSize: 16),),
              ),
            ],
          ),
          ListTile(
            title: Text('Contact', style: TextStyle(color: Colors.black, fontSize: 16),),
          ),
          SizedBox(height: 50),
          Container(
            height: 50,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 60),
            decoration: BoxDecoration(
              border: Border.all(
                color: mainTextColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.library_add,
                  color: Colors.black,
                ),
                SizedBox(width: 10),
                Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 50,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 60),
            decoration: BoxDecoration(
              color: mainTextColor,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
