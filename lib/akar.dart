import 'package:flutter/material.dart';
import 'akar_result.dart';



class Inputakar extends StatefulWidget {
  @override
  _Inputakar createState() => _Inputakar();
}

class _Inputakar extends State<Inputakar> {
  int a = 0;
  int b = 0;
  int c = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //NAVBAR
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        centerTitle: true,      
        title: Text('Akar Kuadrat Rumus ABC'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                //INPUTAN 1
                Container(
                  margin: EdgeInsets.only(top: 10),
                          width:300,
                          height: 100,
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                a = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.green[900],
                            ),
                            decoration: new InputDecoration(
                              suffix: Text('x^2'),
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0)),
                                        labelText: "Masukkan Inputan 1",
                                hintText: '1'),
                              ),
                          ),
                  //INPUTAN 2
                  Container(
                      margin: EdgeInsets.only(top: 3),
                          width: 300,
                          height: 100,
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                b = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.green[900],
                            ),
                            decoration: new InputDecoration(
                              suffix: Text('x'),
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0)),
                                        labelText: "Masukkan Inputan 2",
                                hintText: '-2'),
                              ),
                          ),
                //INPUTAN 3
                Container(
                      margin: EdgeInsets.only(top: 3),
                          width: 300,
                          height: 100,
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                c = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.green[900],
                            ),
                            decoration: new InputDecoration(
                              suffix: Text(''),
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0)),
                                        labelText: "Masukkan Inputan 3",
                                hintText: '-3'),
                              ),
                          ),
                  //BUTTON HITUNG
                  Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 200,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                    
                      Navigator.push(
                        context,
                          MaterialPageRoute(
                          
                                builder: (context) => JarakResult(
                                  
                                  a_x: a,
                                  b_x: b,
                                  c_x: c,)),
                          );

                    },
                    child: Text(
                      "Hitung Akar",
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
        ],
      ),
      //BUTTOM BAR
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
