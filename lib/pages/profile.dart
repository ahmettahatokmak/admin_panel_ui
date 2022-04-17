import 'package:adminpanel/colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
 const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  
  @override
  Widget build(BuildContext context) {
    String image = "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/102653/s960_Minister_Donelan.jpeg";
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              ClipOval(
                child: Image.network(image,width: 150,height: 150,fit: BoxFit.cover,),
              ),
              
            ],
          ),


const SizedBox(height: 20,),

const Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),

const SizedBox(height: 15,),

const Text(rank,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 15),),

const SizedBox(height: 30,),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

infoBar("Complaint Response", "150", [
  Colors.blue,
  Colors.green
])



  ],
)




        ],
      ),
    );
  }

Widget infoBar(String title,value,List<Color> color){
  return Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: color,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight
      ),
      borderRadius: BorderRadius.circular(100)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
Text(title,style:const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
Text(value,style:const TextStyle(color: Colors.white,fontSize: 15),),
      ],
    ),
  );
}



}