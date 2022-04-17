import 'package:adminpanel/colors.dart';
import 'package:adminpanel/data/users_data.dart';
import 'package:adminpanel/widget/widgets.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
 const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width-500;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Row(
          children: [
            const SizedBox(width: 30,),
            Column(
              children: [
                
              const  Text("Users",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                
                const SizedBox(height: 20,),









Row(
  children: [
                    user(username1, url1,width,bio1),
        const SizedBox(width: 40,),
        
         user(username2, url2,width,bio2),
  ],
),


const SizedBox(height: 20,),


Row(
  children: [
                    user(username3 , url3,width,bio3),
        const SizedBox(width: 40,),
        
         user(username4, url4,width,bio4),
  ],
),

const SizedBox(height: 20,),

Row(
  children: [
                    user(username5, url5,width,bio5),
        const SizedBox(width: 40,),
        
         user(username6, url6,width,bio6),
  ],
),
 
const SizedBox(height: 20,),

Row(
  children: [
                    user(username7, url7,width,bio7),
        const SizedBox(width: 40,),
        
         user(username8, url8,width,bio8),
  ],
),

const SizedBox(height: 20,),

Row(
  children: [
                    user(username9, url9,width,bio9),
        const SizedBox(width: 40,),
        
         user(username10, url10,width,bio10),
  ],
),

const SizedBox(height: 20,),

Row(
  children: [
                    user(username11, url11,width,bio11),
        const SizedBox(width: 40,),
        
         user(username12, url12,width,bio12),
  ],
),

const SizedBox(height: 20,),

Row(
  children: [
                    user(username13, url13,width,bio13),
        const SizedBox(width: 40,),
        
         user(username14, url14,width,bio14),
  ],
),


        
              ],
            ),


const SizedBox(width: 100,),



Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    infoBar("Active Users", "1570", [
  Colors.yellow,
  Colors.yellow.shade600,
  Colors.yellow.shade700,
  Colors.yellow.shade800,
  Colors.yellow.shade900,
 ], Colors.yellow),

const SizedBox(height: 20,),


infoBar("New Users", "478", [
       Colors.blue,
  Colors.blue.shade600,
  Colors.blue.shade700,
  Colors.blue.shade800,
  Colors.blue.shade900,
  ],Colors.blue),

const SizedBox(height: 20,),
 

infoBar("Banned Users", "15", [
     Colors.red,
  Colors.red.shade600,
  Colors.red.shade700,
  Colors.red.shade800,
  Colors.red.shade900,
  ],Colors.red),

const SizedBox(height: 20,),

infoBar("Total Complaints", "87", [
       Colors.purple,
  Colors.purple.shade600,
  Colors.purple.shade700,
  Colors.purple.shade800,
  Colors.purple.shade900,
],Colors.purple),

const SizedBox(height: 20,),

infoBar("   Resolved\n Complaints", "83", [Colors.yellow,
  Colors.green.shade600,
  Colors.green.shade700,
  Colors.green.shade800,
  Colors.green.shade900,],Colors.green)

  ],
)

    ],
  )

      
          
        ),
      );
    
  }

Widget infoBar(String title,value,List<Color> color,Color shadowColor){
  return Container(
    
    width: 150,
    height: 150,
    decoration: BoxDecoration(

boxShadow: [
  BoxShadow(
    color: shadowColor,
    offset:const Offset(0,3),
    blurRadius: 8,
    spreadRadius: 1
  )
],

      gradient: LinearGradient(
        colors: color,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight
      ),
      borderRadius: BorderRadius.circular(50)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
Text(title,style:const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
Text(value,style:const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
      ],
    ),
  );
}
  
}