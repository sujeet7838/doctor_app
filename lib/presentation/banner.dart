import 'package:doctor_app/constants.dart';
import 'package:doctor_app/size_confige.dart';
import 'package:flutter/material.dart';

class DoctorBanner extends StatelessWidget {
  const DoctorBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: getRelativeWidth(0.94),
          height: getRelativeHeight(0.22),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: getRelativeWidth(0.88),
                height: getRelativeHeight(0.17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryDarkColor,
                      blurRadius: 40,
                      offset: const Offset(0, 15),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff77E2FE), Color(0xff46BDFA)],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getRelativeWidth(0.03),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
