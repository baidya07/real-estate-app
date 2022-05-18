import 'package:flutter/material.dart';
import 'package:real_estate_app/app/pages/splash_screen/splash_screen.dart';

import '../resources/size_constants.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String? _username, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        centerTitle: true,
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 25.0,
          ),
          child: Container(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  TextFormField(
                    autofocus: false,
                    validator: (value) =>
                        value!.isEmpty ? "Please enter valid password" : null,
                    onSaved: (value) => _username = value,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Password',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    autofocus: false,
                    obscureText: true,
                    validator: (value) =>
                        value!.isEmpty ? "Please enter valid password" : null,
                    onSaved: (value) => _password = value,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Login')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
