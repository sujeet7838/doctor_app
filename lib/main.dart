import 'package:doctor_app/presentation/doctor_app.dart';
import 'package:doctor_app/size_confige.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

//https://github.com/hammadx02/Doctor-App-Flutter/tree/main/lib
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Builder(
        builder: (constext) {
          SizeConfig.initSize(constext);
          return const DoctorScreen();
        },
      ),
    );
  }
}
