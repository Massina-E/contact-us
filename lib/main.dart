import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Us Screen',
      home: ContactScreen(),
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.amber[200],
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Image(
                image: AssetImage('images/contact1.png'),
              ),
            ),
          ),
          Text(
            'We\'re here for you. Always!',
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Card(
                icon: Icons.alternate_email,
                text: 'Reach us on twitter @lvl',
              ),
              Card(
                icon: Icons.phone,
                text: 'You can always call us',
              ),
            ],
          ),
          Row(
            children: [
              Card(
                icon: Icons.mail,
                text: 'We\'re happy to receive your mail',
              ),
              Card(icon: Icons.comment, text: 'Please leave a comment'),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            'All rights reserved',
            style: TextStyle(fontSize: 15.0),
          ),
          SizedBox(
            height: 25.0,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black26),
              children: [
                TextSpan(text: 'Made with '),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(Icons.fingerprint_sharp),
                  ),
                ),
                TextSpan(text: 'by Massina'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final IconData icon;
  final String text;
  Card({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.orangeAccent.shade100,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.blue,
              ),
              Text(
                '$text',
                style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
