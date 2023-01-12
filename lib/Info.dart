import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class info extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body:Container(color:Colors.yellow[800],
          child: 
          Center(child: Text('Information__Page',style: TextStyle(fontSize: 20),)),),
      ),
    );
  }  
}