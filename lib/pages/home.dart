import 'package:adminpanel/colors.dart';
import 'package:adminpanel/pages/app_info.dart';
import 'package:adminpanel/pages/ban_req.dart';
import 'package:adminpanel/pages/complaints.dart';
import 'package:adminpanel/pages/dashboard.dart';
import 'package:adminpanel/pages/users.dart';
import 'package:adminpanel/widget/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
 const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages= [
   const Dashboard(),
   const Users(),
   const Complaints(),
   const BanRequests(),
   const AppInfo(),


  ];
  int currentIndex =0;
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      

      body: Row(
        children: [
          const SizedBox(width: 10,),
  Container(
         decoration: BoxDecoration(
  
           color: kDrawerBackgroundColor,
           borderRadius: BorderRadius.circular(40)
         ),
         width: size.width-1300,
         height: size.height-30,
         child: leftSide(),
       ),

         const SizedBox(width: 20,),
         SizedBox(
           height: size.height,
           width: size.width-100,
           child: pages.elementAt(currentIndex),
         )
        ],
      ),
    );
  }
  Widget leftSide(){
    return           Column(
        children: [
         const SizedBox(height: 20,),

Image.asset("assets/logo.png",width: 100,height: 100,),
const SizedBox(height: 20,),


          drawerItem("Dashboard",const Icon(Icons.dashboard_outlined,color: kIconColor), (){
            setState(() {
              currentIndex=0;
            });
          },
          kBackgroundColor
          ),

  const SizedBox(height: 10,),         

            drawerItem("Users",const Icon(Icons.group_outlined,color: kIconColor,), (){
            setState(() {
              currentIndex=1;
            });
          },
          kBackgroundColor),
 
  const SizedBox(height: 10,),

          drawerItem("Complaints",const Icon(Icons.warning_amber_outlined,color: kIconColor,), (){
            setState(() {
              currentIndex=2;
            });
          },
          kBackgroundColor
          ),

  const SizedBox(height: 10,),

          drawerItem("Ban Requests",const Icon(Icons.request_page,color: kIconColor,), (){
            setState(() {
              currentIndex=3;
            });
          },
          kBackgroundColor),
          
  const SizedBox(height: 10,),

          drawerItem("App Information",const Icon(EvaIcons.infoOutline,color: kIconColor,), (){
            setState(() {
              currentIndex=4;
            });
          },
          kBackgroundColor),

  const SizedBox(height: 10,),


          
        ],
      );
  }
}