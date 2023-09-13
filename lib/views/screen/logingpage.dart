import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';

class logingpage extends StatefulWidget {
  const logingpage({super.key});

  @override
  State<logingpage> createState() => _logingpageState();
}

class _logingpageState extends State<logingpage> {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      logo: Image.asset(''),
      title: 'chat app',
      onLogin: (val) {
        Get.toNamed('/homepage');
      },
      onRecoverPassword: (val) {},
    );
  }
}
