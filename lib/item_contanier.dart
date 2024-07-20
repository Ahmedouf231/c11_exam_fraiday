import 'package:flutter/material.dart';

class ItemContanier extends StatelessWidget {
  const ItemContanier({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(15),
        height: 186 ,
        width: 500,
        color:Color(0xffECFDF3) ,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Positive vibes' ,
                  style: TextStyle(
                    fontSize: 20 ,
                    fontWeight: FontWeight.w600
                  ),),
                  SizedBox(height: 10,),
                  Text('Boost your mood with' ,
                   style: TextStyle(
                    fontSize: 18 ,
                    fontWeight: FontWeight.w500
                  ),),
                  Text('positive vibes' ,
                   style: TextStyle(
                    fontSize: 18 ,
                    fontWeight: FontWeight.w500
                  ),),
                  SizedBox(
                    height: 20,
                  ),
              Row(
                children: [
                  Image.asset('assets/images/play.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text('10 mins', style: TextStyle(
                    fontSize: 14 ,
                    fontWeight: FontWeight.w600
                  ),)
                ],
              )
                ],
              ),
            ) ,
            Padding
            (
            padding: EdgeInsets.symmetric(
              horizontal: 20 ,
              vertical: 40
            ),
            child: Image.asset('assets/images/dog.png', 
            ))
          ],
        ),
      ),
    );
  }
}