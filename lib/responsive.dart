import 'package:adminpanel/error.dart';
import 'package:adminpanel/pages/home.dart';
import 'package:flutter/material.dart';

class ResponsiveScreen extends StatefulWidget {
 const ResponsiveScreen({Key? key}) : super(key: key);

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if(constraints.maxWidth<1000){
        return const Error();
        }else{
         return const Home();
        }
      }),
    );
  }
}