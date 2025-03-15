import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Center(
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 4),
                    ),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage('https://scontent.fbkk13-3.fna.fbcdn.net/v/t39.30808-1/455003591_1606316359917746_6090145247160592771_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=110&ccb=1-7&_nc_sid=e99d92&_nc_ohc=DrtzuKLqYykQ7kNvgEsT_Wc&_nc_oc=AdjIEPa7M6aw2e89o97gsAuuOXANpsbFzmVAunxTyc68HyJuVAhuHQH3c8RUFJoZD-U&_nc_zt=24&_nc_ht=scontent.fbkk13-3.fna&_nc_gid=wSDGjDNgQj79zXTftoMDLQ&oh=00_AYGuu1Jp6v2Ko0a3lrH745GAglfVsnkjLnCKMzHDD9Ig1w&oe=67DAA8D9'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Chonpasu Chaumwarasart',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'IT Student | UX/UI Enthusiast',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                  Divider(thickness: 1, height: 30),
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.blue),
                    title: Text('chonpasu@gmail.com'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.green),
                    title: Text('+66 966801523'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on, color: Colors.red),
                    title: Text('Bangkok, Thailand'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Contact Me',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
