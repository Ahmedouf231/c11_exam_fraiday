import 'package:flutter/material.dart';

class Exersisecard extends StatelessWidget {
  Exersisecard({super.key, required this.image, required this.text});
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 20,10 ),
        height: 56,
        width: 200,
        color: Color(0xffF9F5FF),
        child: Row(
          children: [
            Image.asset('$image'),
            SizedBox(
              width: 5,
            ),
            Text('$text')
          ],
        ),
      ),
    );
  }
}
