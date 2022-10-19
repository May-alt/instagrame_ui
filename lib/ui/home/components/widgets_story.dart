import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:instagrame_ui/layout/colors/const_colors.dart';
import 'package:instagrame_ui/layout/consts/cons.dart';

class StorySection extends StatefulWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  State<StorySection> createState() => _StorySectionState();
}

class _StorySectionState extends State<StorySection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
         Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/story-circle.png")
                  )
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      IconlyLight.plus,
                      color: black,
                    ),
                ),
              ),
              SizedBox(height: 05.0,),
              Text("votre story")
            ],
          ),

          Row(
            children: listStory.map((story) {
              return Column(
                children: [
                  Container(
                      margin:const EdgeInsets.symmetric(horizontal: 10.0) ,

                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/story-circle.png",height: 70,),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30.0,
                            backgroundImage: AssetImage(story["urlImg"]),
                          )
                        ],
                      )
                  ),
                  SizedBox(height: 05.0,),
                  Text(story["name"])
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}


