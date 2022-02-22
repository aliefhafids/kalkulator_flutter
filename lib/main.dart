import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Kalkulator",
      home: new HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  int? bil1 = 0;
  int? bil2 = 0; 
  int? sum = 0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  void penjumlahan() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);
      sum = bil1! + bil2!;
    });
  }

  void pengurangan() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);
      sum = bil1! - bil2!;
    });
  }

  void perkalian() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);
      sum = bil1! * bil2!;
    });
  }

  void pembagian() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);
      sum = bil1! ~/ bil2!;
    });
  }

  //----------------------- penggunaaan scaffold --------------------
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hasil Perhitungan : $sum",
              style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),

            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Input Pertama",
              border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
              controller: t1,
              
            ),
            
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Input Kedua",
              border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
              controller: t2,
            ),

            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("x"),
                  color: Colors.blue[900],
                  textColor: Colors.white,
                  onPressed: perkalian,
                  minWidth: 140.0,
                  height: 50.0,
                ),
                
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.blue[900],
                  textColor: Colors.white,
                  onPressed: pembagian,
                  minWidth: 140.0,
                  height: 50.0,
                ),
              ],
            ),


            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.blue[900],
                  textColor: Colors.white,
                  onPressed: penjumlahan,
                  minWidth: 140.0,
                  height: 50.0,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.blue[900],
                  textColor: Colors.white,
                  onPressed: pengurangan,
                  minWidth: 140.0,
                  height: 50.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}