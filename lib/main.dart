import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dart_eval/dart_eval.dart';
import 'dart:io';



void main() {
  runApp(Calc());
}

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  var calc = '';
  var ev = '';
  var size = 80;
  @override

  Widget build(BuildContext context) {
    return  MaterialApp(home:Scaffold(body:Container(
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0,
                ),
                color: Colors.black,
              ),
              height: 295,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(calc,style:GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 82,
                    fontWeight: FontWeight.w400
                ),
                ),
              )
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
              ),
              color: Colors.black,
            ),
            height: (MediaQuery.of(context).size.height-295)/5,
            child: Row(
              children: [
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  calc="";
                  ev = '';
                  print(Platform.operatingSystem);
                });},backgroundColor: Color(0xFF6e6e6e),child: Text("AC",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),)),),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc = "-(" + calc + ")";
                    ev = '-(' + ev + ")";
                  }
                });},backgroundColor: Color(0xFF6e6e6e),child: Text("+/-",style: TextStyle(fontSize: 42,),)),),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){
                  setState(() {
                    calc = (eval(ev)/100).toString();
                    ev = (eval(ev)/100).toString();
                  });
                },backgroundColor: Color(0xFF6e6e6e),child: Text("%",style: TextStyle(fontSize: 42),),),),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "÷";
                    ev += "/";
                  }
                });},backgroundColor: Color(0xFFf69906),child: Text("÷",style: TextStyle(fontSize: 42),)),),
                Spacer(),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
              ),
              color: Colors.black,
            ),
            height: (MediaQuery.of(context).size.height-295)/5,
            child: Row(
              children: [
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "7";
                    ev += "7";
                  }
                });},backgroundColor: Color(0xFF313131),child: Text("7",style: TextStyle(fontSize: 42),),)),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "8";
                    ev += "8";
                  }
                });},backgroundColor: Color(0xFF313131),child: Text("8",style: TextStyle(fontSize: 42),),)),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "9";
                    ev += "9";
                  }
                });},backgroundColor: Color(0xFF313131),child: Text("9",style: TextStyle(fontSize: 42),),)),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "x";
                    ev += "*";
                  }
                });},backgroundColor: Color(0xFFf69906),child: Center(child: Text("x",style: TextStyle(fontSize: 40),)),)),
                Spacer(),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
              ),
              color: Colors.black,
            ),
            height: (MediaQuery.of(context).size.height-295)/5,
            child: Row(
              children: [
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "4";
                    ev += "4";
                  }
                });},backgroundColor: Color(0xFF313131),child: Text("4",style: TextStyle(fontSize: 42),),)),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "5";
                    ev += "5";
                  }
                });},backgroundColor: Color(0xFF313131),child: Text("5",style: TextStyle(fontSize: 42),),)),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "6";
                    ev += "6";
                  }
                });},backgroundColor: Color(0xFF313131),child: Text("6",style: TextStyle(fontSize: 42),),)),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "-";
                    ev += '-';
                  }
                });},backgroundColor: Color(0xFFf69906),child: Text("-",style: TextStyle(fontSize: 42),),)),
                Spacer(),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
              ),
              color: Colors.black,
            ),
            height: (MediaQuery.of(context).size.height-295)/5,
            child: Row(
              children: [
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "1";
                    ev += '1';
                  }
                });},backgroundColor: Color(0xFF313131),child: Text("1",style: TextStyle(fontSize: 42),),)),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "2";
                    ev += '2';
                  }
                });},backgroundColor: Color(0xFF313131),child: Text("2",style: TextStyle(fontSize: 42),),),),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "3";
                    ev += '3';
                  }
                });},backgroundColor: Color(0xFF313131),child: Text("3",style: TextStyle(fontSize: 42),),)),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "+";
                    ev += '+';
                  }
                });},backgroundColor: Color(0xFFf69906),child: Text("+",style: TextStyle(fontSize: 42),),)),
                Spacer(),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
              ),
              color: Colors.black,
            ),
            height: (MediaQuery.of(context).size.height-295)/5,
            child: Row(
              children: [
                Spacer(),
                SizedBox(width: 190,height: 90,child: FloatingActionButton.extended(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += "0";
                    ev += '0';
                  }
                });}, label: Align(alignment: Alignment.centerLeft ,child:Text('0',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w400))),backgroundColor: Color(0xFF313131),)),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  if (calc.length < 10) {
                    calc += ".";
                    ev += '.';
                  }
                });},backgroundColor: Color(0xFF313131),child: Text(".",style: TextStyle(fontSize: 42),),)),
                Spacer(),
                SizedBox(width: 90,height: 90,child: FloatingActionButton(onPressed: (){setState(() {
                  calc = eval(ev).toString();
                  ev = eval(ev).toString();
                });},backgroundColor: Color(0xFFf69906),child: Text("=",style: TextStyle(fontSize: 42),),)),
                Spacer(),
              ],
            ),
          )
        ],
      ),

    ),
    ),
      debugShowCheckedModeBanner: false,
    );
  }
}

