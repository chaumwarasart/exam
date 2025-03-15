
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PhoneNumberForm(),
    debugShowCheckedModeBanner: false, // ซ่อน Debug Banner
  ));
}

class PhoneNumberForm extends StatefulWidget {
  @override
  _PhoneNumberFormState createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  String _message = '';

  void _validatePhoneNumber() {
    setState(() {
      _message = ''; // เคลียร์ข้อความก่อนหน้า

      String phoneNumber = _phoneController.text.trim();

      if (phoneNumber.isEmpty) {
        _message = 'กรุณากรอกเบอร์โทรศัพท์';
      } else if (!RegExp(r'^[0-9]+$').hasMatch(phoneNumber)) {
        _message = 'กรุณากรอกเฉพาะตัวเลข';
      } else if (phoneNumber.length != 10) {
        _message = 'เบอร์โทรศัพท์ต้องมี 10 หลัก';
      } else {
        _message = '✅ เบอร์โทรศัพท์ถูกต้อง';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('กรอกเบอร์โทรศัพท์')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'เบอร์โทรศัพท์',
                  hintText: 'กรอกเบอร์โทร 10 หลัก',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                maxLength: 10, // จำกัดให้กรอกแค่ 10 หลัก
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: _validatePhoneNumber,
                  child: Text('ตรวจสอบเบอร์โทร'),
                ),
              ),
              SizedBox(height: 20),
              if (_message.isNotEmpty)
                Center(
                  child: Text(
                    _message,
                    style: TextStyle(
                      color: _message.contains('✅') ? Colors.green : Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}