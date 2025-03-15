import 'package:flutter/material.dart';

class ans1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    

    return Scaffold(
      
      appBar: AppBar(title: const Text('โปรไฟล์ผู้ใช้')),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      
      body: SafeArea(
        
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 8,
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage('https://scontent.fbkk13-3.fna.fbcdn.net/v/t39.30808-1/455003591_1606316359917746_6090145247160592771_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=110&ccb=1-7&_nc_sid=e99d92&_nc_ohc=DrtzuKLqYykQ7kNvgEsT_Wc&_nc_oc=AdjIEPa7M6aw2e89o97gsAuuOXANpsbFzmVAunxTyc68HyJuVAhuHQH3c8RUFJoZD-U&_nc_zt=24&_nc_ht=scontent.fbkk13-3.fna&_nc_gid=wSDGjDNgQj79zXTftoMDLQ&oh=00_AYGuu1Jp6v2Ko0a3lrH745GAglfVsnkjLnCKMzHDD9Ig1w&oe=67DAA8D9'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'ชื่อผู้ใช้: Chonpasu Chaumwarasart',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'อีเมล: chonpasu@gmail.com',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                  Divider(thickness: 1, height: 30),
                  ListTile(
                    leading: Icon(Icons.settings, color: const Color.fromARGB(255, 103, 97, 97)),
                    title: Text('การตั้งค่า'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.key, color: const Color.fromARGB(255, 84, 88, 84)),
                    title: Text('เปลี่ยนรหัสผ่าน'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip, color: const Color.fromARGB(255, 74, 72, 72)),
                    title: Text('ความเป็นส่วนตัว'),
                    onTap: () {},
                  ),
                  
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 158, 234, 249),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    
                    child: Text(
                      'แก้ไขโปรไฟล์',
                      style: TextStyle(fontSize: 18),
                      
                    ),
                  ),
                  
                  ElevatedButton(
                    
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 158, 234, 249),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        
                      ),
                    ),
                    child: Text(
                      'ออกจากระบบ',
                      style: TextStyle(fontSize: 18),
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      
    );
    
  }
}
