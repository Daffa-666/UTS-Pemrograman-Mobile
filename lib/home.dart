import 'package:daffauts/akar.dart';
import 'package:flutter/material.dart';
import 'akar.dart';


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        centerTitle: true,
        
        title: Text('Aplikasi Hitung Akar Kuadrat'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 10, left: 20, right: 20),
                    child: Image.asset(
                      'images/rumus.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  
                  //BUTTON HITUNG AKAR
                  Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 250,
                  height: 100,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Inputakar()));
                    },
                    child: Text(
                      "Hitung Akar Kuadrat",
                      style: TextStyle(
                        fontSize: 20,
                        
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),

                ],
              ),
            ),
          )
          //button
        ],
      ),
      //BUTTOM BAR
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 50,
          color: Colors.green[500],
          alignment: Alignment.center,
          child: Text(
            'Daffa',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}