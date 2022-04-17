import 'package:adminpanel/colors.dart';
import 'package:adminpanel/data/users_data.dart';
import 'package:adminpanel/widget/widgets.dart';
import 'package:flutter/material.dart';

class Complaints extends StatefulWidget {
 const Complaints({Key? key}) : super(key: key);

  @override
  State<Complaints> createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
 
  @override
  Widget build(BuildContext context) {

 var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
const SizedBox(height:30 ,),

const Text("Complaints",style: TextStyle(color: kTextColor,fontSize: 30,fontWeight: FontWeight.bold),),

              const SizedBox(height:30 ,),
              sikayet(username1, "Why?", bio1, url1, 900),
              const SizedBox(height:30 ,),
              sikayet(username2, "Your admin is idiot", bio2, url2, 900),
              const SizedBox(height:30 ,),
              sikayet(username3, "help me", bio3, url3, 900),
              const SizedBox(height:30 ,),
              sikayet(username4, "Hey!", bio4, url4, 900),
              const SizedBox(height:30 ,),
              sikayet(username5, "thx", bio5, url5, 900),
              
            ],
          ),
        ),
      ),
    );
  }
}