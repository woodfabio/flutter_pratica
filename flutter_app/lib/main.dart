import 'package:flutter/material.dart';
import 'package:flutter_app/home/home_page_contacts.dart';
import 'package:flutter_app/home/home_page_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageContacts(title: 'Contact App'),
    );
  }
}


