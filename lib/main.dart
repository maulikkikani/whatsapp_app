import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_app/views/screen/homepage.dart';
import 'package:whatsapp_app/views/screen/logingpage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    myapp(),
  );
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/logingpage',
      getPages: [
        GetPage(
          name: '/',
          page: () => homepage(),
        ),
        GetPage(
          name: '/logingpage',
          page: () => logingpage(),
        ),
      ],
    );
  }
}
