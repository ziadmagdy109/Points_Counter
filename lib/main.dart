import 'package:flutter/material.dart';

void main(){
  runApp(basketBall());
}

class basketBall extends StatefulWidget {

  @override
  State<basketBall> createState() => _basketBallState();
}

class _basketBallState extends State<basketBall> {
   int teamAPoints = 0;

   int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text('Points Counter',style: TextStyle(fontSize: 27),),
          ),
          body:
           Column(
             children: [
               SizedBox(height: 30,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text('Team A',style: TextStyle(fontSize: 38),),
                       Text('$teamAPoints',style: TextStyle(fontSize: 150),),
                        ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                           ),
                          side: BorderSide(width: 2),
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints++;
                          });
                        }, 
                        child: Text('Add 1 point',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                        SizedBox(height: 25,),
                        ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                           ),
                          side: BorderSide(width: 2),
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints += 2;
                          });
                        }, 
                        child: Text('Add 2 point',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                        SizedBox(height: 25,),
                        ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                           ),
                          side: BorderSide(width: 2),
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints += 3;
                          });
                        }, 
                        child: Text('Add 3 point',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                        SizedBox(height: 25,),
                    ],
                  ),
                  const SizedBox(
                    height: 350,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text('Team B',style: TextStyle(fontSize: 38),),
                       Text('$teamBPoints',style: TextStyle(fontSize: 150),),
                        ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                           ),
                          side: BorderSide(width: 2),
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamBPoints ++;
                          });
                        }, 
                        child: Text('Add 1 point',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                        SizedBox(height: 25,),
                        ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                           ),
                          side: BorderSide(width: 2),
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamBPoints +=2;
                          });
                        }, 
                        child: Text('Add 2 point',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                        SizedBox(height: 25,),
                        ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                           ),
                          side: BorderSide(width: 2),
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamBPoints +=3;
                          });
                        }, 
                        child: Text('Add 3 point',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                        SizedBox(height: 25,),
                    ],
                  ),
                ],
                         ),
               Spacer(flex: 2,),
               ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                           ),
                          side: BorderSide(width: 3,color: Colors.red),
                          backgroundColor: Colors.blue,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints =0;
                            teamBPoints =0;
                          });
                        }, 
                        child: Text('Reset',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
               Spacer(flex: 6,),
             ],
           ),
      ),
    );
  }
}