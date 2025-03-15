// import 'package:flutter/material.dart';
// import 'myprofile.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Profile Card',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text('My Profile')),
//         body: ProfileCard(),
//       ),
//     );
//   }
// }
import 'package:final_exam_650710234/coutingNumber.dart';
import 'package:final_exam_650710234/mix.dart';
import 'package:final_exam_650710234/myprofile.dart';
import 'package:final_exam_650710234/phoneNumber.dart';
import 'package:flutter/material.dart';
import 'coutingUser.dart'; // นำเข้าไฟล์ user_form.dart

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
      //home: CalculationForm(),
      //home: Mixfrom(),
      //home: PhoneNumberForm(),
      home: ProfileCard(),
    );
  }
}
