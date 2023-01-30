import 'package:dreamroots_mtest/doctors/presentation/doctors_list.dart';
import 'package:flutter/material.dart';

import 'reviews/presentation/reviews.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DoctorsList(),
    );
  }
}
