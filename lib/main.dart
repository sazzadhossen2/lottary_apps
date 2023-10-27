import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(const Myapps());
}
class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Random random =Random();
  int x=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const  Center(child: Text("Lottary wining Number 5")),
          const SizedBox(height: 20,),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              color:x==5?Colors.purpleAccent.withOpacity(.3): Colors.grey.withOpacity(0.2),

            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:x==5?  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    const Icon(Icons.accessibility_rounded,color: Colors.green,),
    Text("congratulations you win. your number $x\n ",textAlign:TextAlign.center,),
    ],
    ):
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.error,color: Colors.red,),
                  Text("Better Luck Next time your number $x\n try again",textAlign:TextAlign.center,),
                ],
              ),
            ),
            
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x=random.nextInt(10);
          setState(() {

          });
        },
        child:const Icon(Icons.add),
      ),
    );
  }
}
