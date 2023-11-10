import'package:flutter/material.dart';
import 'package:project/createacnt.dart';
import 'package:project/login.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: MyForms1());
  }
}
class MyForms1 extends StatefulWidget {
  const MyForms1({super.key});

  @override
  State<MyForms1> createState() => _MyForms1State();
}

class _MyForms1State extends State<MyForms1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdosobIogXhZPHVTwi3rp4NTpHlxuyfC75A3rhcjxceBZVipvQfynCUhfAJ0JNKZ9Nlmk&usqp=CAU"),
                width: 300,
                height: 350,
              ),
              SizedBox(height: 10),
              Text("              HELLO!!\n\n Hurry up to start learning \n in a easy way",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,height: 1.2,color: Colors.black,shadows: [
                Shadow(
                    offset: Offset(2.0, 2.0), //position of shadow
                    blurRadius:2.0, //blur intensity of shadow
                    color: Colors.grey.withOpacity(0.8),
                )
              ]),),
              SizedBox(height: 50),
              Container(
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.purpleAccent
                    ),
                    onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyForms()));
                },child:Text("Sign-in",style: TextStyle(fontSize: 20),)),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.purpleAccent,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>create()));
                      }, child: Text("Register",style: TextStyle(fontSize: 20),)))
            ],
          ),
        ),
      ),
    );
  }
}