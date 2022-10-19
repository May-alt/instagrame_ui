import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:instagrame_ui/layout/colors/const_colors.dart';
import 'package:instagrame_ui/ui/home/components/widgets_body.dart';
import 'package:instagrame_ui/ui/home/components/widgets_story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          child: Image.asset(
            "assets/images/instagram-logo.png",
            height: 60,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                IconlyLight.plus,
                color: black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                IconlyLight.heart,
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
      body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(padding: const EdgeInsets.only(left: 10.0),
            child: StorySection(),
           ),

           SizedBox(height: 10.0,),

           Padding(padding: const EdgeInsets.all(10.0),


           child:  BodyStory()
           )
         ],
       ),
      )
         
    );
  }
}
