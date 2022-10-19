import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:instagrame_ui/layout/consts/reus_widgets.dart';


class BootomBarShow extends StatefulWidget {
  const BootomBarShow({Key? key}) : super(key: key);

  @override
  State<BootomBarShow> createState() => _BootomBarShowState();
}

class _BootomBarShowState extends State<BootomBarShow> {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              BtnlinkIcon(
                  onPressed: (){},
                  icon: Icons.share,
                  text: "Partager"
              ),

              BtnlinkIcon(
                  onPressed: (){},
                  icon: Icons.link,
                  text: "Lien"
              ),

              BtnlinkIcon(
                  onPressed: (){},
                  icon: IconlyLight.bookmark,
                  text: "Enregistrer"
              ),

              BtnlinkIcon(
                  onPressed: (){},
                  icon: Icons.qr_code,
                  text: "Code QR")
            ],
          ),
          ),


       ligne(),
       SizedBox(height: 08.0,),

       linklistTitle(onTap: (){}, icon: Icons.star_border_outlined, text: "Ajouter aus favoris"),
       linklistTitle(onTap: (){}, icon: Icons.person, text: "Ne plus suivre"),

       ligne(),
       linklistTitle(onTap: (){}, icon: Icons.info_outline, text: "Pourquoi vous voyer cette publication"),
       linklistTitle(onTap: (){}, icon: Icons.visibility_off_outlined, text: "Masquer"),
       linklistTitle(onTap: (){}, icon: Icons.sensors_off_outlined, text: "Signaler",),




        ],
      );
  }
}
