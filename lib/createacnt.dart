import 'package:flutter/material.dart';
import 'package:project/departments.dart';
void main()
{
  runApp(create());
}
class create extends StatefulWidget {
  const create({super.key});

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      //appBar: AppBar(),
      body: SingleChildScrollView(scrollDirection:Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 150),
            TextField(
              decoration: InputDecoration(
                  hintText: "name",labelText: "username",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide: BorderSide(color: Colors.red)),
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: IconButton(onPressed: () {}, icon:Icon(Icons.arrow_drop_down_outlined))),
              cursorColor: Colors.black,
              cursorHeight:20,
              cursorWidth: 3,
              cursorRadius: Radius.circular(10),
              obscureText: false,
            ),

            SizedBox(height: 20),
            TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.date_range_outlined),
                suffixIcon: Icon(Icons.arrow_drop_down_circle_outlined),
                labelText: "DOB",hintText: "dd/mm/year"

            ),
              cursorColor: Colors.black,
              cursorHeight: 20,
              cursorWidth: 2,
              cursorRadius: Radius.circular(10),
            ),


            SizedBox(height: 20,),
            TextField(decoration: InputDecoration(
                labelText: "password",hintText: "security",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.password_outlined),
                suffixIcon: Icon(Icons.remove_red_eye_outlined )
            ),
              obscureText: true,
              //obscuringCharacter: 'R',
              cursorRadius: Radius.circular(10),
              cursorWidth: 2,
              cursorHeight: 20,

            ),
            SizedBox(height: 20,),
            TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.phone),
                labelText: "Phone",hintText: "Number"

            ),
              cursorRadius: Radius.circular(10),
              cursorWidth: 2,
              cursorHeight: 20,
            ),
            SizedBox(height: 20,),
            TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.person),
                labelText: "Gender",
                hintText: "Male/Female"
            ),cursorHeight: 20,
              cursorWidth: 2,
              cursorRadius: Radius.circular(10),
            ),
            SizedBox(height: 50),
            Container(width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.purpleAccent,
                  ),
                  onPressed: () {
                     Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen1()));
                  },
                  child: Text("Create")),
            ),
          ],),
      ),
    );
  }
}