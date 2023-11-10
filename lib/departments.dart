import 'package:flutter/material.dart';
import 'package:project/main.dart';
void main()
{
  runApp(Screen1());
}
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children:[
              SizedBox(height:50),
              Center(child: Text("Select your year....",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              SizedBox(height: 30),
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                gradient:LinearGradient(
                                    colors:[
                                      Colors.purple,
                                      Colors.purpleAccent,
                                      Colors.deepPurple
                                    ]
                                )),
                            height: 150,width:150,
                            child: Center(child: Text(" CSE ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),)),),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()))
                            ;                      },
                          child: Container(
                            decoration: BoxDecoration(gradient:LinearGradient(
                                colors:[
                                  Colors.purple,
                                  Colors.purpleAccent,
                                  Colors.deepPurple
                                ]
                            )),
                            height: 150,width:150,
                            child: Center(child: Text(" IT ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),)),
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              SizedBox(height: 30,),
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                          },
                          child: Container(
                            decoration: BoxDecoration(gradient:LinearGradient(
                                colors:[
                                  Colors.purple,
                                  Colors.purpleAccent,
                                  Colors.deepPurple
                                ]
                            )),
                            height: 150,width:150,
                            child: Center(child: Text(" ECE ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),)),),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left:30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                          },
                          child: Container(
                            child: Center(child: Text(" EEE ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                            decoration: BoxDecoration(
                              gradient:LinearGradient(
                                  colors:[
                                    Colors.purple,
                                    Colors.purpleAccent,
                                    Colors.deepPurple
                                  ]
                              ),
                            ),
                            height: 150,
                            width:150,
                          ),
                        ),
                      ),
                    )
                  ]
              ),
              SizedBox(height: 30),
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                          },
                          child: Container(
                            decoration: BoxDecoration(gradient:LinearGradient(
                                colors:[
                                  Colors.purple,
                                  Colors.purpleAccent,
                                  Colors.deepPurple
                                ]
                            )),
                            height: 150,width:150,
                            child: Center(child: Text(" MECH ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),)),),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left:30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                          },
                          child: Container(
                            child: Center(child: Text(" CIVIL ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                            decoration: BoxDecoration(
                              gradient:LinearGradient(
                                  colors:[
                                    Colors.purple,
                                    Colors.purpleAccent,
                                    Colors.deepPurple
                                  ]
                              ),
                            ),
                            height: 150,
                            width:150,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              SizedBox(height: 30),
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                          },
                          child: Container(
                            decoration: BoxDecoration(gradient:LinearGradient(
                                colors:[
                                  Colors.purple,
                                  Colors.purpleAccent,
                                  Colors.deepPurple
                                ]
                            )),
                            height: 150,width:150,
                            child: Center(child: Text(" AIML ",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),)),),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left:30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                          },
                          child: Container(
                            child: Center(child: Text(" DS ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                            decoration: BoxDecoration(
                              gradient:LinearGradient(
                                  colors:[
                                    Colors.purple,
                                    Colors.purpleAccent,
                                    Colors.deepPurple
                                  ]
                              ),
                            ),
                            height: 150,
                            width:150,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}