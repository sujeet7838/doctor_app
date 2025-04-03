import 'package:doctor_app/constants.dart';
import 'package:doctor_app/presentation/appbar.dart';
import 'package:doctor_app/presentation/banner.dart';
import 'package:doctor_app/size_confige.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getRelativeHeight(0.025)),
            DoctorAppBar(),
            SizedBox(height: getRelativeHeight(0.025)),
            DoctorBanner(),
          ],
        ),
      ),
    );
  }
}
