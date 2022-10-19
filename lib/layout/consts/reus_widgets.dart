import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


/*************************** Ligne Widgets********************************/
Widget ligne() => Container(
      height: 1.5,
      color: Colors.grey,
    );


/*****************************Boutton Of Link******************************/
Widget BtnlinkIcon({
  required void Function()? onPressed,
  required IconData? icon,
  required String text,
}) =>
   Column(
     children: [
       Container(
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           border: Border.all(color: Colors.black),
         ),
         child: Center(
           child: IconButton(onPressed: onPressed, icon: Icon(icon)),
         ),
       ),
       SizedBox(height: 08.0,),
       Text(text,style: GoogleFonts.lato(fontSize: 12),),
     ],
   );
/************************** list of ListTitle*************************************/

Widget linklistTitle({
  required void Function()? onTap,
  required IconData? icon,
  required String text,

}) =>ListTile(
  onTap: onTap,
  leading: Icon(icon),
  title: Text(text),
);