import 'package:c11_exam_fraiday/firstScreen.dart';
import 'package:c11_exam_fraiday/second_secreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false ,
    initialRoute:Firstscreen.routeName  ,                                                                           
    routes: {  
      Firstscreen.routeName : (context)=> Firstscreen() ,
      SecondSecreen.routeName : (context) => SecondSecreen()
 }

  );
  }
} 
