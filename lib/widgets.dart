import 'package:flutter/material.dart';
import 'package:raw_ware_website/functions.dart';
import 'variables.dart';

class HorizontalBar extends StatelessWidget {
  const HorizontalBar({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: rawGrey,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          HorizontalBarOption(
            name: "Home", 
            path: "/home",
          ),
          HorizontalBarOption(
            name: "Software", 
            path: "/software",
          ),
          HorizontalBarOption(
            name: "Developers", 
            path: "/developers",
          ),
          HorizontalBarOption(
            name: "Privacy Policies", 
            path: "/privacy_policies",
          ),
        ],
      ),
    );
  }
}
class HorizontalBarOption extends StatelessWidget {
  const HorizontalBarOption({
    Key? key,
    required this.name,
    required this.path,
  }) : super(key: key);
  final String name;
  final String path;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //Navigator
        Navigator.pushNamed(context, path);
      },
      child: Container(
        color: rawGrey,
        padding: const EdgeInsets.all(10),
        child: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
class HechoEnPuertoRico extends StatelessWidget {
  const HechoEnPuertoRico({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: rawGrey,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: const Text(
        "Hecho en 🇵🇷",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
class HorizontalRule extends StatelessWidget {
  const HorizontalRule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 1,
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
    );
  }
}