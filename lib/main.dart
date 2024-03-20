import 'package:flutter/material.dart';
import 'package:task1/view/homescreem.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:HomeScreen() );
  }
}