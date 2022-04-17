import 'package:adminpanel/colors.dart';
import 'package:adminpanel/widget/widgets.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            
      Row(
        children: const[
           SizedBox(width: 30,),
          Align(
          
        alignment: Alignment.centerLeft,
          
        child: Text("Dashboard",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          
          ),
        ],
      ),
      
      
      
     dashboard(),
      
      
      
      
      
      
      
      
      
      const SizedBox(height: 30,),
      
      statics(),
      
      const SizedBox(height: 50,),
      
      staticsLastMonth()
      
          ],
        ),
      ),
    );
  }










Widget statics(){



  return Column(
    children: [
Row(
  children: const[
     SizedBox(width: 30,),
        Align(
    
      alignment: Alignment.centerLeft,
    
      child: Text("This Month",style: TextStyle(color: Colors.grey,fontSize: 25,fontWeight: FontWeight.w600),),
    
    ),
  ],
),


const SizedBox(height: 30,),



Row(
  children: [

    const SizedBox(width: 50,),
    infoBar("Active Users", "1570", [
      Colors.yellow,
      Colors.yellow.shade600,
      Colors.yellow.shade700,
      Colors.yellow.shade800,
      Colors.yellow.shade900,
     ], Colors.yellow),

const SizedBox(width: 20,),


    infoBar("New Users", "478", [
           Colors.blue,
      Colors.blue.shade600,
      Colors.blue.shade700,
      Colors.blue.shade800,
      Colors.blue.shade900,
      ],Colors.blue),

    const SizedBox(width: 20,),
 

    infoBar("Banned Users", "15", [
         Colors.red,
      Colors.red.shade600,
      Colors.red.shade700,
      Colors.red.shade800,
      Colors.red.shade900,
      ],Colors.red),

    const SizedBox(width: 20,),

    infoBar("Total Complaints", "87", [
           Colors.purple,
      Colors.purple.shade600,
      Colors.purple.shade700,
      Colors.purple.shade800,
      Colors.purple.shade900,
    ],Colors.purple),

    const SizedBox(width: 20,),

    infoBar("   Resolved\n Complaints", "83", [Colors.yellow,
      Colors.green.shade600,
      Colors.green.shade700,
      Colors.green.shade800,
      Colors.green.shade900,],Colors.green),

  ],
)

    ],
  );
}





Widget staticsLastMonth(){



  return Column(
    children: [
Row(
  children: const[
     SizedBox(width: 30,),
        Align(
    
      alignment: Alignment.centerLeft,
    
      child: Text("Last Month",style: TextStyle(color: Colors.grey,fontSize: 25,fontWeight: FontWeight.w600),),
    
    ),
  ],
),


const SizedBox(height: 30,),



Row(
  children: [

    const SizedBox(width: 50,),
    infoBar("Active Users", "1570", [
      Colors.yellow,
      Colors.yellow.shade600,
      Colors.yellow.shade700,
      Colors.yellow.shade800,
      Colors.yellow.shade900,
     ], Colors.yellow),

const SizedBox(width: 20,),


    infoBar("New Users", "478", [
           Colors.blue,
      Colors.blue.shade600,
      Colors.blue.shade700,
      Colors.blue.shade800,
      Colors.blue.shade900,
      ],Colors.blue),

    const SizedBox(width: 20,),
 

    infoBar("Banned Users", "15", [
         Colors.red,
      Colors.red.shade600,
      Colors.red.shade700,
      Colors.red.shade800,
      Colors.red.shade900,
      ],Colors.red),

    const SizedBox(width: 20,),

    infoBar("Total Complaints", "87", [
           Colors.purple,
      Colors.purple.shade600,
      Colors.purple.shade700,
      Colors.purple.shade800,
      Colors.purple.shade900,
    ],Colors.purple),

    const SizedBox(width: 20,),

    infoBar("   Resolved\n Complaints", "83", [Colors.yellow,
      Colors.green.shade600,
      Colors.green.shade700,
      Colors.green.shade800,
      Colors.green.shade900,],Colors.green),

  ],
)

    ],
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
    offset: const Offset(0,3),
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

Widget dashboard(){
  return  Container(
        width: MediaQuery.of(context).size.width-20,
        height: 400,
        decoration: BoxDecoration(
        gradient:const LinearGradient(
          colors: [Color.fromARGB(255, 172, 172, 172),Color.fromARGB(255, 214, 214, 214)],end: Alignment.topLeft,begin: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                stripe(200, Colors.grey),
                Center(
              child: Image.asset("assets/logo.png",width: 120,height: 120,),
            ),
             stripe(200, Colors.grey),
              ],
            ),
            Row(
              children: [
   
           Row(
        children: [
          const SizedBox(width: 30,),
         const Text("Application Score:",style: TextStyle(color: kTextColor,fontWeight: FontWeight.w400,fontSize: 20),),
         ratingBar(4.5),

         const SizedBox(width: 150,),

Container(width: 1,height: 200,color:const Color.fromARGB(255, 27, 27, 27),),
const SizedBox(width: 150,),





           
        ], 
           ),

           Row(
        children:const [
           SizedBox(width: 30,),
         SizedBox(
           height: 200,
           width: 400,
           child:  Text("""There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum.""",style: TextStyle(color: kTextColor,fontWeight: FontWeight.w400,fontSize: 20),)),
    

      







           
        ], 
           ),

              ],
            )
         
          ],
        )
      );
}
}