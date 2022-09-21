import 'package:flutter/material.dart';
import 'package:raw_ware_website/variables.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Developers extends StatelessWidget {
  const Developers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HorizontalBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: const [
                    Developer(
                      devName: "Radamés J. Valentín Reyes", 
                      url: "https://pro-file-af57f.web.app/",
                    ),
                  ],
                ),
              ),
            ),
          ),
          const HechoEnPuertoRico(),
        ],
      ),
    );
  }
}
class Developer extends StatelessWidget {
  const Developer({
    Key? key,
    required this.devName,
    required this.url,
  }) : super(key: key);
  final String devName;
  final String url;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
        await launchUrlString(
          url,
          mode: LaunchMode.externalApplication,
        );
      },
      child: ListTile(
        leading: Icon(
          Icons.person,
          color: rawGrey,
        ),
        title: Text(
          devName,
        ),
      ),
    );
  }
}