import 'package:flutter/material.dart';

const mainTextColor = Color(0xFF4BCC5A);

class TabBarWidget extends StatelessWidget {

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
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Home', style: TextStyle(color: Colors.black, fontSize: 16),),
                Icon(Icons.add, color: Colors.grey,)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 0.5,
            color: mainTextColor,
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('About', style: TextStyle(color: Colors.black, fontSize: 16),),
                Icon(Icons.add, color: Colors.grey,)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 0.5,
            color: mainTextColor,
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Jobs', style: TextStyle(color: Colors.black, fontSize: 16),),
                Icon(Icons.add, color: Colors.grey,)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 0.5,
            color: mainTextColor,
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Candidates', style: TextStyle(color: Colors.black, fontSize: 16),),
                Icon(Icons.add, color: Colors.grey,)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 0.5,
            color: mainTextColor,
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pages', style: TextStyle(color: Colors.black, fontSize: 16),),
                Icon(Icons.add, color: Colors.grey,)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 0.5,
            color: mainTextColor,
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Blogs', style: TextStyle(color: Colors.black, fontSize: 16),),
                Icon(Icons.add, color: Colors.grey,)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 0.5,
            color: mainTextColor,
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Contact', style: TextStyle(color: Colors.black, fontSize: 16),),
                Icon(Icons.add, color: Colors.grey,)
              ],
            ),
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
                Icon(Icons.library_add, color: Colors.black,),
                SizedBox(width: 10),
                Text('Login', style: TextStyle(color: Colors.black),)
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
                Icon(Icons.account_circle, color: Colors.white,),
                SizedBox(width: 10),
                Text('Sign Up', style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
