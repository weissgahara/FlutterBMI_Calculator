import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'About.dart';


class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  String name = "";
  String age = "";
  List<String> kelamin = ["Laki-Laki", "Perempuan"];
  String sex ;

  void selectSex(String value) {
    setState(() {
      sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        leading: Icon(
          Icons.home,
        ),
        title: Text('MENGHITUNG BMI'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                'img/kokoro.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(labelText: 'Nama Lengkap'),
                  onChanged: (String nama) {
                    setState(() {
                      name = nama;
                    });
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                hint: Text("Pilih Gender"),
                onChanged: (String value) {
                  selectSex(value);
                },
                value: sex,
                items: kelamin.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(labelText: 'Umur'),
                onChanged: (String Umur) {
                  setState(() {
                    age = Umur;
                  });
                },
                keyboardType: TextInputType.number,
                maxLength: 3,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                // color: Colors.blue[700],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            suffix: Text('cm'),
                            filled: true,
                            labelText: 'Tinggi'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(10),
          // color: Colors.blue[700],
          child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        berat = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        suffix: Text('kg'),
                        filled: true,
                        labelText: 'Berat'),
                  ),
                ),
              ],
          )),

            Container(
              //height: double.infinity,

              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                            kelamin: sex,
                            input_umur: age,
                            input_nama: name,
                            tinggi_badan: tinggi,
                            berat_badan: berat)),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.pink,
                // textColor: Colors.white,
                child: Text(
                  'HITUNG BMI',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              //height: double.infinity,

              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutMe()
                    ),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.pink,
                // textColor: Colors.white,
                child: Text(
                  'About Me',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
