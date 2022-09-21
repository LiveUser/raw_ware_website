import 'package:flutter/material.dart';
import 'package:raw_ware_website/variables.dart';
import 'package:raw_ware_website/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Software extends StatelessWidget {
  const Software({Key? key}) : super(key: key);

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
                  children:  const [
                    CoolCard(
                      icon: Icons.android,
                      text: "Hard Coded, great looking, intuitive simplistic UI, high performing Android apps",
                      link: "https://play.google.com/store/search?q=pub%3Arawware&c=apps",
                    ),
                    CoolCard(
                      icon: Icons.computer, 
                      text: "Linux software made using Electron Framework", 
                      link: "https://snapcraft.io/imagerunner",
                    ),
                    CoolCard(
                      icon: Icons.computer, 
                      text: "Windows software made using the latest technologies", 
                      link: "https://rawwaresoftware.gumroad.com/",
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
class CoolCard extends StatelessWidget {
  const CoolCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.link,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final String link;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
        await launchUrlString(
          link,
          mode: LaunchMode.externalApplication,
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                size: 100,
                color: rawGreen,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}