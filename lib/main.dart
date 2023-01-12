import 'package:drawer/Info.dart';
import 'package:drawer/UI.dart';
import 'package:drawer/profile.dart';
import 'package:drawer/setting.dart';
import 'package:drawer/slas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title:'My Application',
      theme:ThemeData(primarySwatch:Colors.blue),
      home:slas()
    );
  }
}
class Mainpage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
      return pagestate();
    }
}
class pagestate extends State<Mainpage>
{
  Widget content=homeNav();
  var cl=Colors.orange;
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: Drawer(
        child:ListView(
          children: [
            
            Row(
              children: [
                CircleAvatar(backgroundImage:NetworkImage('')),
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Amit Kushwah",style: Textstyle20(),),
                    Text("amitmca000@Gmail.com",style: Textstyle15(),)
                  ],
                ),
              ],
            ),
            item(Icons.home,"Home",() {
              Navigator.pop(context);
              content=homeNav();
              setState(() {});
            }),
            item(Icons.account_circle_sharp,"Profile",() {
              Navigator.pop(context);
              content=profile();
              setState(() {});
            }),
            item(Icons.settings, "Setting",() {
              Navigator.pop(context);
              content=setting();
              setState(() {});
            }),
            item(Icons.logout, "LogOut",(){
              Navigator.pop(context);
              content=homeNav();
              setState(() {});
            }),
            item(Icons.info,"Information",(){
              Navigator.pop(context);
              content=info();
              setState(() {});
            })
          ],)
      ),
      appBar:AppBar(title:Text('AppBar')),
      body:content
    );
  }
  Widget item(
    IconData iconn , 
    String title,
    // BuildContext context,
    // Widget load,
    VoidCallback tap,
    )
  {
    return InkWell(
      onTap: () {
        tap();
      },
      child: Padding(
        padding: const EdgeInsets.only(top:15),
        child: Row(
                  children: [
                    Expanded(child: Icon(iconn,size: 30,)),
                    Expanded(flex:3, child: Text(title,style: TextStyle(fontSize: 20),))
                  ],
                ),
      ),
    );
  }
} 
class homeNav extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Container(color:Colors.red[400],
      child:Center(child: Text('Home__Page',style: Textstyle20(),)))
    );
  }
}
