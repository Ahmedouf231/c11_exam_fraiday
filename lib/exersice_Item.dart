import 'package:c11_exam_fraiday/exersiseCard.dart';
import 'package:flutter/material.dart';

class ExersiceItem extends StatelessWidget {
  const ExersiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Exersisecard(image: 'assets/images/e1.png' , text: 'Relaxation') ,
           Exersisecard(image: 'assets/images/e2.png' , text: 'Meditation') ,
          ],
        ) ,
        Row(
          children: [
           Exersisecard(image:'assets/images/e3.png', text: 'Beathing') ,
           Exersisecard(image:'assets/images/e4.png', text: 'Yoga') ,
          ],
        )
      ]
    );
  }
}
