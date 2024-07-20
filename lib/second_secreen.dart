import 'package:c11_exam_fraiday/exersice_Item.dart';
import 'package:c11_exam_fraiday/item-Text2.dart';
import 'package:c11_exam_fraiday/item_contanier.dart';
import 'package:c11_exam_fraiday/item_text.dart';
import 'package:c11_exam_fraiday/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondSecreen extends StatefulWidget {
  static const String routeName = 'Second Screen'; 

  @override
  State<SecondSecreen> createState() => _SecondSecreenState();
}

class _SecondSecreenState extends State<SecondSecreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset('assets/images/log.png'),
          actions: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.notifications_outlined,
                )),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  ' Sara Rose',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Text(
              'How are you feeling today ?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Items(),
            SizedBox(
              height: 20,
            ),
            ItemText_2(text1: 'Feature', text2: 'See more >'),
            ItemContanier(),
            ItemText_2(text1: 'Exercise', text2: 'See more >'),
            ExersiceItem(),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:Color(0xff027A48) ,
          unselectedItemColor: Color(0xff667085),
          type: BottomNavigationBarType.shifting ,
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {
              });
            } ,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings_applications_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.badge_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ));
  }
}
