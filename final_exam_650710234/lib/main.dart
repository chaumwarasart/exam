
import 'package:final_exam_650710234/answer2.dart';
import 'package:final_exam_650710234/test/coutingNumber.dart';
import 'package:flutter/material.dart';
import 'answer1.dart'; // นำเข้าไฟล์ user_form.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Form App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: UserForm(), // เรียกใช้ UserForm ที่อยู่ใน user_form.dart
      home: ans2(),
      //home: Mixfrom(),
      //home: PhoneNumberForm(),
      //home: ans1(),
    );
  }
}
