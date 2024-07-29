import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => HomePageState();


}

class HomePageState extends State<HomePage>{
  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();
  String result = '';
  int check = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.0),
        child: Column(
          children: [
            Text('Addition', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 21,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: no1Controller,
              decoration: InputDecoration(
                  label: Text('No1 *'),
                  hintText: 'Enter no 1'
              ),
            ),
            SizedBox(
              height: 11,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: no2Controller,
              decoration: InputDecoration(
                  label: Text('No2 *'),
                  hintText: 'Enter no 2'
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  check = 1;
                  //caluclation(1); ///add

                }, child: Text('+')),
                ElevatedButton(onPressed: (){
                  check = 2;
                  //caluclation(2);

                }, child: Text('-')),
                ElevatedButton(onPressed: (){
                  check = 3;
                  //caluclation(3);

                }, child: Text('*')),
                ElevatedButton(onPressed: (){
                  check = 4;
                  //caluclation(4);
                }, child: Text('/')),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                caluclation();
              }, child: Text('Calculate')),
            ),
            Text(result)
          ],
        ),
      ),
    );
  }

  void caluclation(){
    if(no1Controller.text!="" && no2Controller.text!="") {
      int no1 = int.parse(no1Controller.text.toString());
      int no2 = int.parse(no2Controller.text.toString());

      if(check==1){
        int sum = no1 + no2;
        result = "The Sum is $sum";
      } else if(check==2){
        int sub = no1-no2;
        result = "The Difference is $sub";
      } else if(check==3){
        int mult = no1*no2;
        result = "The Product is $mult";
      }else if(check==4){
        num div = no1/no2;
        result = "The Division is ${div.toStringAsFixed(2)}";
      } else {
        result = "Please select an Operator before performing any operation!!";
      }

    } else {
      result = "Please fill all the required blanks!!";
    }

    setState(() {

    });
  }
}
