import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body:Container(color:Colors.pink[200],
          child: 
          Center(child: Text('Profile__Page',style: TextStyle(fontSize: 20),)),),
      ),
    );
  }  
}