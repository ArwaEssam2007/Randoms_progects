import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/counterprovider.dart';
import 'package:untitled2/pointscounter.dart';
import 'package:untitled2/providebutton.dart';
import 'package:untitled2/provider.dart';
import 'package:untitled2/providerbmi.dart';
import 'package:untitled2/textinput.dart';
import 'package:untitled2/utton.dart';
import 'BMI.dart';
import 'buttoncounter.dart';
import 'listgrid.dart';
import 'login.dart';
import 'loginn.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

       home: ChangeNotifierProvider(
        create: (context) => bmipro(),
           child: Game()),
       debugShowCheckedModeBanner: false,
    );
  }
}
