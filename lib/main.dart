import 'package:flutter/material.dart';
import 'package:raw_ware_website/developers.dart';
import 'package:raw_ware_website/software.dart';
import 'package:raw_ware_website/privacy_policies.dart';
import 'widgets.dart';
//TODO: Host on firebase
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      routes: {
        "/home" :(context) => const MyHomePage(),
        "/developers" :(context) => const Developers(),
        "/software" :(context) => const Software(),
        "/privacy_policies" :(context) => const PrivacyPolicies(),
      },
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HorizontalBar(),
          Expanded(
            child: SizedBox(
              child: Image.asset(
                "images/rawware.png",
                fit: BoxFit.contain,
                width: 200,
                alignment: Alignment.center,
              ),
            ),
          ),
          const HechoEnPuertoRico(),
        ],
      ),
    );
  }
}