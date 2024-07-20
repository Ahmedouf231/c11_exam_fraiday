import 'package:c11_exam_fraiday/card_item.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardItem(image: 'assets/images/Love.png', text: 'Love'),
        SizedBox(
          width: 20,
        ),
        CardItem(image: 'assets/images/cool.png', text: 'cool'),
        SizedBox(
          width: 20,
        ),
        CardItem(image: 'assets/images/happy.png', text: 'happy'),
        SizedBox(
          width: 20,
        ),
        CardItem(image: 'assets/images/sad.png', text: 'sad'),
            ], 
    );
  }
}
