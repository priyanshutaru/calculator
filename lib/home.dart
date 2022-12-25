import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0,num2=0, sum=0;
  final TextEditingController t1 =  new TextEditingController(text:"0");
  final TextEditingController t2 =  new TextEditingController(text:"0");

  void doadd(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void dosub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void domul(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void dodiv(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      //sum=(num1/num2) as int;
      sum = num1~/num2;

    });
  }
  void doclear(){
    setState(() {
      t1.text="";
      t2.text="";
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output : $sum",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.red,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter First Number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Second Number 2"),
              controller: t2,
            ),
            new Padding(padding: EdgeInsets.only(top: 5.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("+"),
                  color: Colors.greenAccent,
                  onPressed: doadd,
                ),
                MaterialButton(
                  child: Text("-"),
                  color: Colors.greenAccent,
                  onPressed: dosub,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 5.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("*"),
                  color: Colors.greenAccent,
                  onPressed: domul,
                ),
                MaterialButton(
                  child: Text("/"),
                  color: Colors.greenAccent,
                  onPressed: dodiv,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 5.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child: Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doclear,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
