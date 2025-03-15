import 'package:flutter/material.dart';

class ans2 extends StatefulWidget {
  @override
  _CalculationFormState createState() => _CalculationFormState();
}

class _CalculationFormState extends State<ans2> {
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = false;
  bool _isCheck = false;
  String? _time = 'ปกติ';
  String _country = '';
  var _controller1 = TextEditingController();

  String? _selectedItem;
  String _result = '';
  String _errorMessage = '';

  // ฟังก์ชันคำนวณ
  void _calculate() {
    setState(() {
      _errorMessage = '';
      _result = '';

      final num1 = double.tryParse(_controller1.text);
      // var num2 = double.tryParse(_country);
      // var num3 = double.tryParse((_isCheck = true) as String);
      // var num4 = double.tryParse(_time!);

      // if (_selectedItem == 'ในเมือง'){
      //   num2 = 10;
      // }else if (_selectedItem == 'ต่างจังหวัด'){
      //   num2 = 15;
      // }else{
      //   num2 = 50;
      // }
      // if (_isCheck == true){
      //   num3 = 20;
      // }
      // if (_time != null){
      //   num4 = 20;
      // }
      if (num1 == null) {
        _errorMessage = 'Please enter valid numbers';
        return;
      }

      // คำนวณผลลัพธ์ (สามารถแก้ไขเป็นการคำนวณที่ต้องการ)
      final result = num1; // การบวกเป็นตัวอย่าง
  
      _result = 'ค่าบริการทั้งหมด:   $result';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ เพิ่ม Scaffold
      appBar: AppBar(title: const Text('คำนวณค่าจัดส่ง')),

      body: SingleChildScrollView(
        // ✅ ป้องกัน Overflow
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                'น้ำหนักสินค้า (กก.):',
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              TextFormField(
                controller: _controller1,
                decoration: InputDecoration(border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'เลือกระยะทาง:'),
                value: _selectedItem,
                items:
                    ['ต่างจังหวัด', 'ในเมือง', 'ต่างประเทศ']
                        .map(
                          (item) =>
                              DropdownMenuItem(value: item, child: Text(item)),
                        )
                        .toList(),
                onChanged: (value) {
                  _selectedItem = value;
                },
                validator:
                    (value) => value == null ? 'Please select an option' : null,
              ),
              Text(
                'บริการเสริม:',
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              CheckboxListTile(
                title: const Text('แพ็คกิ้งพิเศษ (+20 บาท)'),
                value: _isChecked,
                
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('ประกันพัสดุ (+50 บาท)'),
                value: _isCheck,
                onChanged: (value) {
                  setState(() {
                    _isCheck = value!;
                  });
                },
              ),
              Text(
                'เลือกความเร่งด่วน:',
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              RadioListTile(
                title: const Text('ปกติ'),
                value: 'ปกติ',
                groupValue: _time,
                onChanged: (value) {
                  setState(() {
                    _time = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('ด่วน'),
                value: 'ด่วน',
                groupValue: _time,
                onChanged: (value) {
                  setState(() {
                    _time = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('ด่วนพิเศษ'),
                value: 'ด่วนพิเศษ',
                groupValue: _time,
                onChanged: (value) {
                  setState(() {
                    _time = value.toString();
                  });
                },
              ),
              Center(
                // ✅ จัดปุ่มให้อยู่ตรงกลาง
                child: ElevatedButton(
                  onPressed: _calculate,
                  child: Text('คำนวณราคา'),
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
