import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gmail Inbox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InboxScreen(),
    );
  }
}

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail Inbox'),
      ),
      body: ListView.builder(
        itemCount: 20, // email count
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('A'), // email sender's initials
            ),
            title: Text('Sender Name'), // email sender's name
            subtitle: Text('Email Subject'), // email subject
            trailing: Text('12:30 PM'), // email timestamp
          );
        },
      ),
    );
  }
}
