import 'package:dreamroots_mtest/doctors/models/doctor_model.dart';
import 'package:dreamroots_mtest/reviews/presentation/reviews.dart';
import 'package:flutter/material.dart';

import 'widgets/doctor_card.dart';

class DoctorsList extends StatelessWidget {
  DoctorsList({Key? key}) : super(key: key);

  List doctorsList = [
    DoctorModel(
      name: 'Dr. Nancy Stevens',
      image:
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      bookingTime: '09.00 am - 6.30 ',
      education: ['BDS', 'MDS'],
    ),
    DoctorModel(
      name: 'Dr. Derik Malone',
      image:
          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      bookingTime: '09.00 am - 6.30 ',
      education: ['BDS', 'MDS'],
    ),
    DoctorModel(
      name: 'Dr. Megan Stella',
      image:
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      bookingTime: '09.00 am - 6.30 ',
      education: ['BDS', 'MDS'],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Reviews(),
                      ));
                },
                child: Text('View Reviews'),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: doctorsList.length,
              itemBuilder: (BuildContext context, int index) {
                return DoctorCard(
                  doctorData: doctorsList[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
