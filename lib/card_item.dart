import 'package:flutter/material.dart';
class CardItem extends StatelessWidget {
  CardItem({super.key, required this.image, required this.text});
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
       children: [
                  Image.asset('$image') ,
                  Text('$text' , style: TextStyle(
                    fontWeight: FontWeight.w400
                  ),)
                ],
      ),
    );
  }
}
