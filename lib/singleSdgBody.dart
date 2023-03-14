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

            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                  height: MediaQuery.of(context).size.height * 1.3,
                  ),
                  Container(
                    //size.height * 0.1
                    height: MediaQuery.of(context).size.height * 1.3,
                    margin: EdgeInsets.only(top: 50),
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
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          //borderRadius: BorderRadius.circular(32),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100)),
                          child: Image.asset(sdg.image))),
                    ),
              
                    Positioned(
                      top: 120,
                      //top: 10,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 8, 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: Text("Description",
                              style: TextStyle(
                              fontFamily: 'DM',
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Color.fromARGB(255, 0, 0, 0))
                              ),
                            ),
              
                            Padding(
                              padding: const EdgeInsets.only(bottom: 0.0),
                              child: Text("\#${sdg.sdgNum}", 
                              style:  TextStyle(
                              fontFamily: 'DM',
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: sdg.color,
                              //color: Color(0xFF5D2B5C),
                              
                              )
                              ),
                            ),
              
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Container(
                                width: MediaQuery.of(context).size.width*1,
                                child: Text('${sdg.title}',
                                style: const TextStyle(
                                fontFamily: 'DM',
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                color: Color.fromARGB(255, 0, 0, 0))
                                ),
                              ),
                            ),
              
                            const Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text("Targets",
                                                  style: TextStyle(
                              fontFamily: 'DM',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color.fromARGB(255, 0, 0, 0))),
                            ),
              
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Container(
                              width: MediaQuery.of(context).size.width*0.9,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: sdg.color, 
                              ),
                              // specify height
                              padding: EdgeInsets.all(8.0), // specify padding
                              // ignore: prefer_const_constructors
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(sdg.target1, textAlign: TextAlign.justify,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontFamily: 'DM',
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                
                                color: Color.fromARGB(255, 255, 255, 255)),),
                              ),
                                                    ),
                            ),
              
                            Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          // ignore: prefer_const_constructors
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: sdg.color,
                        ),
                        // specify height
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.all(8.0), // specify padding
                        // ignore: prefer_const_constructors
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            sdg.target2,
                            textAlign: TextAlign.justify,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontFamily: 'DM',
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                    ),
              
                    const Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Text("Actions",
                          style: TextStyle(
                              fontFamily: 'DM',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color.fromARGB(255, 0, 0, 0))),
                    ),
              
      
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                          height: 300,
                          width: 300,
                          child: ClipRRect(
                              //borderRadius: BorderRadius.circular(32),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(100),
                                  bottomRight: Radius.circular(100)),
                              child: Image.asset(sdg.action))),
                    )
              
              
                            
                            
                            ],
                        ),
                      ),
                    )
                    
                  
                ],
              ),
            ),

    );
  }

}