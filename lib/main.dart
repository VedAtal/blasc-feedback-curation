import 'package:blasc/desktop_layouts/desktop_dashboard.dart';
import 'package:blasc/desktop_layouts/desktop_submit.dart';
import 'package:blasc/global_vars/mobile_message.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blasc/responsive/responsive_layout.dart';
import 'package:blasc/desktop_layouts/desktop_homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
      authDomain: "xxx.xxxxxxxxxxx.xxx",
      projectId: "xxx",
      storageBucket: "xxx.xxxxxxx.xxx",
      messagingSenderId: "xxxxxxxxxxxx",
      appId: "x:xxxxxxxxxxxx:xxx:xxxxxxxxxxxxxxxxxxxxxx",
      measurementId: "x-xxxxxxxxxx"
    ),
  );

  runApp(const BLASC());
}

class BLASC extends StatelessWidget {
  const BLASC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BLASC',
      theme: ThemeData(
        textTheme: GoogleFonts.lexendTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const ResponsiveLayout(DesktopHomepage(), MobileMessage()),
      // home: const DesktopDashboard(),
    );
  }
}
