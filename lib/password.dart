import 'package:flutter/material.dart';
import 'package:project/createacnt.dart';
void main()
{
  runApp(password());
}
class password extends StatefulWidget {
  const password({super.key});

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(
          children: [
            SizedBox(height: 250,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,)),
                  helperStyle: TextStyle(color: Colors.black),
                  labelText: "New Password",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                maxLength: 10,
                validator: (val)=>val!.length==0 ? "Enter email address": null,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,)),
                  helperStyle: TextStyle(color: Colors.black),
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                maxLength: 10,
                obscureText: true,
                validator: (val)=>val!.isEmpty ? "Enter password":null,
              ),
            ),
            SizedBox(height: 30),
            Container(width:300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.purpleAccent,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>create()));
                    }, child: Text("Reset")))
          ]
      ),
    );
  }
}
