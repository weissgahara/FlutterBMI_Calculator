import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';


class BMIResult extends StatelessWidget {

  BMIResult({
    @required this.input_nama,
    @required this.input_umur,
    @required this.tinggi_badan,
    @required this.berat_badan,
    @required this.kelamin});
  final int tinggi_badan;
  final int berat_badan;
  final String input_nama;
  final String input_umur;
  final String kelamin;


  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;
    String _nama = "\n\n Nama: "+input_nama;
    String _umur = "Umur: "+input_umur+" Tahun";
    String _sex ="Kelamin: "+kelamin;
    String pKOKORO;
    if(bmi>=28){
      cBMI="Obesitas";
      pKOKORO="Sepertinya kamu perlu lebih mengatur pola makan mu, dunia akan tersenyum saat kamu sehat";
    }else if(bmi>=23){
      cBMI="Kelebihan Berat Badan";
      pKOKORO="Kamu masih belum terlambat, tidak ada salahnya untuk mencoba menurunkan berat badan, dunia pasti akan tersenyum";
    }else if(bmi>=17.5){
      cBMI="Normal";
      pKOKORO="YEAY, Kamu tidak terlalu berat ataupun kurus, tolong di jaga, dunia pasti akan tersenyum";
    }else{
      cBMI="Kekurusan";
      pKOKORO="Dunia Sepertinya bersedih";
    }
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image.asset('img/boboron.png'),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.pink,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),

            Text(
              '17,5 -  22.9 \n\n',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              pKOKORO,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),

        Text(
          _nama,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Text(
          _sex,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Text(
          _umur,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),],
        ),
      ),

      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(

          color: Colors.pink,
          child: Text('BACK',
            style: TextStyle(
                fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

    );
  }
}