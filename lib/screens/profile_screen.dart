import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
 // TODO: 1.Deklarasikan variabel yang dibutuhkan

bool isSignedIn = false;
String fullName = '';
String userName = '';
int favoriteCandiCount = 0;
late Color iconColor;

void signIn() {
  // setState(() {
  //  isSignedIn = true;
  //  userName = 'budi';
  //  fullName = 'Budi Santoso';
  //  favoriteCandiCount = 3;
  // });
  Navigator.pushNamed(context, '/signin');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color:  Colors.deepPurple,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //   TODO 2 : Buat Bagian ProfileHeader yang berisi gambar profile
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200-50),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepPurple,width: 2),
                            shape: BoxShape.circle
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/placeholder_image.png'),
                          ),
                        ),
                        if(isSignedIn)
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.camera_alt, color: Colors.deepPurple[50],),)
                      ],
                    ),
                  ),
                )
                //   TODO 3 : Buat Bagian ProfileInfo yang berisi info profile
                //   TODO 4 : Buat ProfileActions yang berisi TextButton Sign in/ out
              ],
            ),
          ),
        ],
      ),
    );
  }
}
