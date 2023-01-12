import 'dart:async';
import 'package:drawer/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class slas extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return slasstate();
  }
}
class slasstate extends State<slas>
{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Mainpage()
      ));
    });
  }
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Container(

        child:Icon(Icons.home,size:250,color:Colors.blue[800]),

        color:Colors.blue[200],height: double.infinity,width: double.infinity,
      )
    );
  }
}