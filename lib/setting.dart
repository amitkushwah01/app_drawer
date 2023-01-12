import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setting extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body:Container(color:Colors.blue[800],
          child: 
          Center(child: Text('Setting__Page',style: TextStyle(fontSize: 20),)),),
      ),
    );
  }  
}