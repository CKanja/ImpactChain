import 'package:flutter/material.dart';
import './models/sdgs.dart';


class sdgBody extends StatelessWidget{
  final SDG sdg;

  const sdgBody({super.key, required this.sdg});

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
            backgroundColor: sdg.color,

            appBar: AppBar(
              leading: IconButton(
              icon: const Icon(Icons.arrow_circle_left),
              //color: Color(0xFF5D2B5C),
              color: Colors.white,
              iconSize: 30,
              onPressed: () { Navigator.pop(context);},
        ),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),

            body: Stack(
              children: [
                
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.1),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20,
                    right: 20,
            ),
            //height: 500,
                  decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24)),
            ),
            //child: Image.asset(sdg.image),
                ),
             
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: ClipRRect(
                        //borderRadius: BorderRadius.circular(32),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100)),
                        child: Image.asset(sdg.image))),
                  ),
                
              ],
            ),

    );
  }

}