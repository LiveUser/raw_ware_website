import 'package:flutter/material.dart';
import 'package:raw_ware_website/widgets.dart';

class PrivacyPolicies extends StatelessWidget {
  const PrivacyPolicies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Create a privacy policies page. Copy the text from Github.
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
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    PoliciesGroup(
                      groupName: "Generic Policies",
                    ),
                    PrivacyPolicy(
                      policyName: "Generic strict privacy policy", 
                      notes: "Applies to all apps with no special access or permissions",
                      policyDetails: "All of your data is saved into your device. Absolutely no information is shared or collected by Raw Ware. Privacy is at the core of this software.",
                    ),
                    PoliciesGroup(
                      groupName: "Specific app policies",
                    ),
                    PrivacyPolicy(
                      policyName: "Cardio privacy policy", 
                      notes: "Only applies to this app",
                      policyDetails: "Overview:\nAll of your contacts are saved in your device, more specifically inside the cardio app data folder. Absolutely no information is shared or collected by Raw Ware. Privacy is at the core of this application.\nApp Permissions:\n- Contacts permission is required in order to import and export contacts to and from the contacts aplication. No contact information is stored or shared by Raw Ware outside your app's storage.\n",
                    )
,                  ],
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
class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({
    Key? key,
    required this.policyName,
    this.notes,
    required this.policyDetails,
  }) : super(key: key);
  final String policyName;
  final String? notes;
  final String policyDetails;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            policyName,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          notes == null ? const SizedBox() : Text(notes!),
          Card(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  policyDetails,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class PoliciesGroup extends StatelessWidget {
  const PoliciesGroup({
    Key? key,
    required this.groupName,
  }) : super(key: key);
  final String groupName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          groupName,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const HorizontalRule(),
      ],
    );
  }
}