import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagrame_ui/layout/colors/const_colors.dart';
import 'package:instagrame_ui/layout/consts/cons.dart';
import 'package:instagrame_ui/ui/home/components/bootom_bar_post.dart';

class BodyStory extends StatefulWidget {
  const BodyStory({Key? key}) : super(key: key);

  @override
  State<BodyStory> createState() => _BodyStoryState();
}

class _BodyStoryState extends State<BodyStory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: listPost.map((post) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(post["profilUrl"]),
                      ),

                      SizedBox(width: 10.0,),
                      Column(
                        children: [
                          Text(post["name"]),
                          Text(post["place"]),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (context){
                            return BootomBarShow();
                          }
                      );
                    },
                    icon: Icon(Icons.more_vert),
                ),
              ],
            ),

            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage(post["urlImg"],)
                  )
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconlyLight.heart,
                            color: black,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconlyLight.message,
                            color: black,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconlyLight.send,
                            color: black,
                          )),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      IconlyLight.bookmark,
                      color: black,
                    )),
              ],
            ),


           Container(
             alignment: Alignment.topLeft,
             height:90,
             child: Column(
               children: [

                 Row(
                   children: [
                     Text("Amis par".toUpperCase()),
                     SizedBox(width: 08.0,),
                     Text("ali karoui et d\'autre personnes")
                   ],
                 ),

                 SizedBox(height: 05.0,),

                 Row(
                   children: [
                     CircleAvatar( backgroundImage: AssetImage(post["profilUrl"]),radius: 10,),
                      SizedBox(width: 05.0,),
                      Expanded(
                        child: TextFormField(
                        onTap: (){},
                        decoration: InputDecoration(
                            hintText: "Ajouter un commentaire",
                           hintStyle: GoogleFonts.lato(fontSize: 10),
                          //outline Border
                          border: InputBorder.none
                        ),
                      ),
                      ),

                     SizedBox(width: 05.0,),

                     IconButton(
                         onPressed: (){}, 
                         icon: Icon(Icons.add_circle_outline)
                     )
                   ],
                 )
               ],
             )
           )


          ],
        );
      }).toList(),
    );
  }
}
