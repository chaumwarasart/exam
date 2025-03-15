import 'package:flutter/material.dart';

class CalculationForm extends StatefulWidget {
  @override
  _CalculationFormState createState() => _CalculationFormState();
}

class _CalculationFormState extends State<CalculationForm> {
  final _formKey = GlobalKey<FormState>();
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  String _result = '';
  String _errorMessage = '';

  // ฟังก์ชันคำนวณ
  void _calculate() {
    setState(() {
      _errorMessage = '';
      _result = '';

      final num1 = double.tryParse(_controller1.text);
      final num2 = double.tryParse(_controller2.text);

      if (num1 == null || num2 == null) {
        _errorMessage = 'Please enter valid numbers';
        return;
      }

      // คำนวณผลลัพธ์ (สามารถแก้ไขเป็นการคำนวณที่ต้องการ)
      final result = num1 + num2;  // การบวกเป็นตัวอย่าง
      _result = 'Result: $result';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  // ✅ เพิ่ม Scaffold
      appBar: AppBar(
        title: const Text('Flutter Calculation Form')
        ),
        
      body: SingleChildScrollView(  // ✅ ป้องกัน Overflow
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _controller1,
                decoration: InputDecoration(
                  labelText: 'Enter first number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _controller2,
                decoration: InputDecoration(
                  labelText: 'Enter second number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Center( // ✅ จัดปุ่มให้อยู่ตรงกลาง
                child: ElevatedButton(
                  onPressed: _calculate,
                  child: Text('Calculate'),
                ),
              ),
              SizedBox(height: 20),
              if (_errorMessage.isNotEmpty)
                Center(
                  child: Text(
                    _errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              if (_result.isNotEmpty)
                Center(
                  child: Text(
                    _result,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
