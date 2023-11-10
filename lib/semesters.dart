import 'package:flutter/material.dart';
import 'package:project/main.dart';
void main()
{
  runApp(Screen2());
}
class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List <String> clg=["1-1","1-2","2-1","2-2","3-1","3-2","4-1","4-2",];
  String? drop="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fitHeight,
                    image: NetworkImage("https://kinsta.com/pt/wp-content/uploads/sites/3/2022/11/enviar-arquivos-para-wordpress.jpeg"))
            ),
          ),
          SizedBox(height: 30,),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text("Go with your semester",style: TextStyle(color: Colors.orange,fontSize: 24,fontWeight:FontWeight.bold)),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: DropdownMenu(
                    hintText: "Select...",
                    dropdownMenuEntries:
                    clg.map<DropdownMenuEntry<String>>((e){
                      return DropdownMenuEntry(value:e,label:e);
                    }).toList(),
                    onSelected:(val){
                      setState(() {
                        drop=val;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen3()));
                    }, child: Text("Proceed"))
              ]
          ),
        ],
      ),
    );
  }
}