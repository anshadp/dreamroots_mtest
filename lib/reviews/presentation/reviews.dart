import 'package:dreamroots_mtest/reviews/models/review_model.dart';
import 'package:dreamroots_mtest/reviews/presentation/widgets/review_card.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  Reviews({Key? key}) : super(key: key);

  List reviewList = [
    ReviewModel(
        name: 'Andrews Jettpace',
        image:
            'https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
        reviewContent:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum.',
        rating: '4.3'),
    ReviewModel(
        name: 'Stacy Stone',
        image:
            'https://t4.ftcdn.net/jpg/03/83/25/83/240_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
        reviewContent:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum.',
        rating: '5.4')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: reviewList.length,
        itemBuilder: (BuildContext context, int index) {
          return ReviewCard(
            review: reviewList[index],
          );
        },
      ),
    );
  }
}
