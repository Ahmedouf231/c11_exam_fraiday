import 'package:flutter/material.dart';

class ItemText extends StatelessWidget {
  String text1;
  String text2;
  ItemText({required this.text1, required this.text2 });
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        '$text1',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      TextButton(onPressed: () {}, child: Text('$text2' ,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
))
    ]);
  }
}
