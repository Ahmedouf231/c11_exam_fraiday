import 'package:flutter/material.dart';

class Text_button extends StatelessWidget {
  String text;
  Text_button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded
    (child: Padding(
      padding: EdgeInsets.all(20),
      child: TextButton(onPressed: () {}, child: Text(text , 
      style: TextStyle(
        color: Colors.black
      ),) ,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        )
        )
      ),
    ),
    
    );
  }
}
