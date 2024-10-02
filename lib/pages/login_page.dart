import 'package:flutter/material.dart';
import 'package:pertemuan_4/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final TextEditingController username = TextEditingController();
  // final TextEditingController password = TextEditingController();
  final TextEditingController nama = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController umur = TextEditingController();
  String? jeniskelamin, hobi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const SizedBox(height: 20),
            // CustomTextField(controller: username, label: "Username", hint: "Masukkan Username"),
            // const SizedBox(height: 20),
            // CustomTextField(controller: password, label: "Password", hint: "Masukkan Password"),
            const SizedBox(height: 20),
            CustomTextField(controller: nama, label: "Nama", hint: "Masukkan Nama"),
            const SizedBox(height: 20),
            CustomTextField(controller: email, label: "Email", hint: "Masukkan Email"),
            const SizedBox(height: 20),
            CustomTextField(controller: umur, label: "Umur", hint: "Masukkan Umur"),
            const SizedBox(height: 20),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 50),
                    title: const Text("Laki-Laki"),
                    leading: Radio<String>(
                      value: "Laki-Laki", 
                      groupValue: jeniskelamin, 
                      onChanged: (value) {
                        setState(() {
                          jeniskelamin =  value;
                        });
                    }),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 50),
                    title: const Text("Wanita"),
                    leading: Radio<String>(
                      value: "Wanita", 
                      groupValue: jeniskelamin, 
                      onChanged: (value) {
                        setState(() {
                          jeniskelamin =  value;
                        });
                    }),
                  ), 
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
              onPressed: () {
                setState(() {
                  // print("username : ${username.text}\npassword : ${password.text}");
                  // username.clear();
                  // password.clear();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
              ),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}