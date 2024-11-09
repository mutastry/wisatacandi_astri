import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

 // TODO: 1. Deklarasikan variabel
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  bool _isSignedIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 2. Pasang AppBar
      appBar: AppBar(tittle: Text('Sign In'),),
      // TODO: 3. Pasang body
      body: Center(
        child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsert.all(16),
        child: Form(
          child: Column(
            // TODO: 4. Atur mainAxisAligment dan crossAxisAligment
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            //  TODO: 5. Pasang TextFormField Nama Pengguna
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: "Nama Pengguna",
                  border: OutlineInputBorder(),
                ),
              )
            //  TODO: 6. Pasang TextFormField Kata Sandi
              SizedBox(height: 28),
            TextFormField(
              controller: _passwordController,
              decoration:  InputDecoration(
                labelText: "Kata Sandi",
                errorText: _errorText.isNotEmpty ? _errorText : null,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: (){
                    setState((){
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off
                        : Icons.visibility,
                  ),),
              ),
              obscureText: _obscurePassword,
            ),
            //  TODO: 7. Pasang ElevatedButton Sign In
              SizedBox(height: 28),
              ElevatedButton(
                onPressed: (){},
                child: Text('Sign In')),
              //  TODO: 8. Pasang TextButton Sign Up
              SizedBox(height: 10),
              //...
              RichText(
                text: TextSpan(
                  text: 'belum punya akun?',
                  style: TextStyle(fontSize: 16, color:  Colors.deepPurple),
                  children: <TextSpam>[
                    TextSpan(
                      text: 'Daftar di sini.',
                      style: TextStyle(
                        color: Colors.blue, // Warna untuk teks yang bisa ditekan
                        decoration: TextDecoration.underline,
                        fontSize: TapGestureRecognizer()
                          ..onTap = () {},
                      )
                    )
                  ]
                ),
              )
        )
        )
      )
    )

              // TextButton(
              //   onPressed: (){},
              // child: Text('Belum punya akun? Daftar di sini.')),
            ],
          )),
      ),
    );
  }

