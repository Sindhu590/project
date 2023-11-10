import 'package:flutter/material.dart';
import 'package:project/main.dart';
void main()
{
  runApp(MyForms());
}
class MyForms extends StatefulWidget {
  const MyForms({super.key});
  @override
  State<MyForms> createState() => _MyFormsState();
}
class _MyFormsState extends State<MyForms> {
  final _formkey=GlobalKey<FormState>();
  final _email=TextEditingController();
  final _pass=TextEditingController();
  bool? _ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Form(
            key: _formkey,
            child: Column(
                children: [
                  SizedBox(height: 100),
                  Text("Hello Again!!",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,)),
                  SizedBox(height: 20),
                  Text("Welcome back you've\n\n      been missed!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
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
                          hintText: "username",
                          helperStyle: TextStyle(color: Colors.black),
                          labelText: "Email address",
                          labelStyle: TextStyle(color: Colors.black)
                      ),
                      controller: _email,
                      validator: (val)=>val!.length==0 ? "Enter email address": null,
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      controller: _pass,
                      obscureText: true,
                      validator: (val)=>val!.isEmpty ? "Enter password":null,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      CheckboxMenuButton(value: _ischecked, onChanged:(val) {
                        setState(() {
                          _ischecked = val;
                        });
                      },child: Text("Remember me",style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(width: 80,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>password()));
                      }, child: Text("Forgot Password?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.purpleAccent,
                      ),
                      onPressed: (){
                        if(_formkey.currentState!.validate()) {
                          print("true!!!!!!!!!!");
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => Screen1()));
                        }
                      },
                      child: Text("Login",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      SizedBox(
                        width:100,
                        child: Divider(color: Colors.grey.shade900,
                        ),
                      ),
                      Text(" or continue with ",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(
                        width: 100,
                        child: Divider(
                          color: Colors.grey.shade900,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50,),
                  Row(
                    children: [
                      SizedBox(width: 80,),
                      ClipRRect(borderRadius:BorderRadius.circular(80),child: Container(height: 50,width: 50,
                        color: Colors.black,child: Icon(Icons.apple,color: Colors.white,size: 40,),)),
                      SizedBox(width: 40,),
                      ClipRRect(borderRadius:BorderRadius.circular(80),child: Container(height: 50,width: 50,
                        color: Colors.black,child: Icon(Icons.g_mobiledata_rounded,color: Colors.white,size: 40,),)),
                      SizedBox(width: 40,),
                      ClipRRect(borderRadius:BorderRadius.circular(80),child: Container(height: 50,width: 50,
                        color: Colors.black,child: Icon(Icons.facebook_outlined,color: Colors.white,size: 40,),)),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text("                              Not a member? ",style: TextStyle(fontWeight: FontWeight.bold),),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>create()));
                      }, child: Text("Register Now",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold,color: Colors.purpleAccent),))
                    ],
                  ),
                ]
            ),
          ),
        )
    );
  }
}