import 'package:flutter/material.dart';
import 'dart:math';

class JarakResult extends StatelessWidget {
  JarakResult({required this.a_x, required this.b_x,required this.c_x});
  final int a_x;
  final int b_x;
  final int c_x;

  @override
  Widget build(BuildContext context) {
    //MEMASUKKAN RUMUS
    int perkalian= 4*a_x*c_x;
    int bAkar=b_x*b_x;
    int gabungAtas=bAkar-perkalian;

    double akar = sqrt(gabungAtas);
    double atas1=-b_x +akar;
    double atas2=-b_x -akar;

    int bawah= 2*a_x;
    
    double x1=atas1/bawah;
    double x2=atas2/bawah;
    

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        centerTitle: true,
        title: Text('Hasil'),
      ),
      body: Container(
      alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Text(
              
              'Nilai Dari x1 dan x2 berturur-turut adalah:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.red,
              ),
            ),
            Text(
              'x1: ${x1.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.red,
              ),
            ),

            Text(
              'x2: ${x2.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.red,
              ),
            ),
            
            Text(
              '\nJadi dalam persamaan yang sudah diketahui nilai a,b dan c maka nilai dari x pada persamaan tersebut yaitu ${x1.toStringAsFixed(2)} atau ${x2.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.green,
              ),
            ),

          ],
        ),
      ),
     bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
        width: double.infinity,
        height: 50,
        child: RaisedButton(
          color: Colors.green[500],
          child: Text(
            'Kembali',
            style: TextStyle(fontSize: 20,color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
     ),
    );
  }
}
