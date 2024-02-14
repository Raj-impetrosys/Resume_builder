import 'package:flutter/material.dart';
import 'package:resume_builder/custom_ui/headstyle.dart';

import '../modals/data.dart';

// ignore: must_be_immutable
class ResumeScreen extends StatelessWidget {
  // Variable for Using Display data
  final PersonalInfo input;
  final About about;
  const ResumeScreen({
    Key? key,
    required this.input,
    required this.about,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // For Title Text
            const Header(info: 'PERSONAL DETAIL'),

            // Display Personal detail of user

            Text('Name : ${input.name}'),
            if (input.email.isNotEmpty) Text('Email : ${input.email}'),
            Text('Phone: ${input.phone}'),
            Text('Address: ${input.address}'),
            Text('Status: ${input.status}'),
            Text('Date Of Birth: ${input.dob}'),
            Text('About : ${about.about}'),
            Text('hobbies : ${about.hobbies}'),
            Text('languages : ${about.languages}'),
            Text('strength : ${about.strength}'),
            Text('weakness : ${about.weakness}'),
          ],
        ),
      ),
    );
  }
}
