import 'package:adminpanel/colors.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget drawerItem(String title,Icon icon,Function() onTap,Color selectedColor){
return SizedBox(
  height: 50,
  child: ListTile(
  
    onTap: onTap,
  
    title: Text(title,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
  
    leading: icon,
  
    selectedColor: selectedColor,
  
  ),
);
}



Widget user(String username,String url,double width,String bio,){
return Container(
  height: 200,
  width: 300,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,
            boxShadow:const [
               BoxShadow(
                 color: Color.fromARGB(255, 172, 172, 172),
                 blurRadius: 5,
                 spreadRadius: 2,
                 offset: Offset(3,3)
               )
             ],
  ),
  
  child: Column(
    children: [
      const SizedBox(height: 15,),
      Row(
        children: [
              const SizedBox(width: 20,),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(url,width: 50,height: 50,fit: BoxFit.cover,),
          ),
          const SizedBox(width: 15,),
          Column(
            children: [
              Text(username,style:const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              Text("@$username",style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
            ],
          ),
          
        ],
      ),
      const SizedBox(height:10),
      SizedBox(
        width: 290,
        height: 110,
        child: Text(bio,style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),))
    ],
  ),
);
}

Widget stripe(double width,Color color){
  return Container(
width: width,
height: 1,
color:color,
  );
}


Widget sikayet(String username,String title,String content,String url,double width){
  return Container(
height: 150,
width: width,
decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(20),
  boxShadow: const[
    BoxShadow(
      offset: Offset(1,1),
      blurRadius: 5,
      spreadRadius: 2,
      color: Color.fromARGB(255, 179, 179, 179)
    )
  ]
),
child: ListTile(
  title: Text(title,style:const TextStyle(color: kTextColor,fontWeight: FontWeight.bold),),
  leading: ClipOval(child: Image.network(url,width: 50,height: 50,fit: BoxFit.cover,),),
  subtitle: SizedBox(
    width: width,
    height: 100,
    child: Text(content,style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)),
  trailing: IconButton(icon:const Icon(Icons.arrow_right_outlined,color: Colors.green,),onPressed: (){},),
),
  );
}






Widget ratingBar(double rating){
  return RatingBar.builder(
   initialRating: rating,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding:const EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => const Icon(
     EvaIcons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {

   },
);
}

Widget ratingBar2(){
  return RatingBar.builder(
    initialRating: 3,
    itemCount: 5,
    itemBuilder: (context, index) {
       switch (index) {
          case 0:
             return const Icon(
                Icons.sentiment_very_dissatisfied,
                color: Colors.red,
             );
          case 1:
             return const Icon(
                Icons.sentiment_dissatisfied,
                color: Colors.redAccent,
             );
          case 2:
             return const Icon(
                Icons.sentiment_neutral,
                color: Colors.amber,
             );
          case 3:
             return const Icon(
                Icons.sentiment_satisfied,
                color: Colors.lightGreen,
             );
          case 4:
              return const Icon(
                Icons.sentiment_very_satisfied,
                color: Colors.green,
              );
       }
       return Container();
    },
    onRatingUpdate: (rating) {
     
    },



);
}

