import 'package:flutter/material.dart';

class PointCounter extends StatefulWidget {
  const PointCounter({super.key});

  @override
  State<PointCounter> createState() => _pointcounterState();
}

class _pointcounterState extends State<PointCounter> {
  int TA = 0;
  int TB =0;
  void AddPointToTeamA(int points){
    setState(() {
      TA +=points;
    });
  }
  void  AddPointToTeamB(int points){
    setState(() {
      TB += points;
    });
  }
  void reset( )
  {
    setState(() {
      TA =0;
      TB=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Points Counter"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(

                  children: [
                    Text("Team A" , style: TextStyle(fontSize: 40),),
                    Text("$TA" , style: TextStyle(fontSize: 100),),
                    MaterialButton( onPressed: ()=>AddPointToTeamA(1) , child: Text("Add 1 point"),color: Colors.pinkAccent,),
                    MaterialButton(onPressed: ()=>AddPointToTeamA(2)  , child: Text("Add 2 point"),color: Colors.pinkAccent,),
                    MaterialButton(onPressed: ()=>AddPointToTeamA(3)  , child: Text("Add 3 point"),color: Colors.pinkAccent,)
                  ],
                ),

                 Container(
                   height: 370,
                     child: VerticalDivider(color: Colors.black,thickness: 1,)),

                Column(

                  children: [
                    Text("Team B" , style: TextStyle(fontSize: 40),),
                    Text("$TB" , style: TextStyle(fontSize: 100),),
                    MaterialButton( onPressed: ()=>AddPointToTeamB(1)  , child: Text("Add 1 point"),color: Colors.pinkAccent,),
                    MaterialButton(onPressed: ()=>AddPointToTeamB(2) , child: Text("Add 2 point"),color: Colors.pinkAccent,),
                    MaterialButton(onPressed: ()=>AddPointToTeamB(3) , child: Text("Add 3 point"),color: Colors.pinkAccent,)
                  ],
                )
              ],
            ),

            MaterialButton(onPressed: ()=>reset(),child: Text("Reset"),color: Colors.pink,)
          ],
        ) ,
      ),
    );
  }
}
