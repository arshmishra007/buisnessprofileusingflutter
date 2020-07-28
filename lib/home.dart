import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
myapp()
{
  FlutterStatusbarcolor.setStatusBarColor(Colors.blue[100]);
  myname()
  {
    Fluttertoast.showToast(
        msg: "Hello Arsh Mishra",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      //  timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  something()
  {
    Fluttertoast.showToast(
        msg: "something clicked",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

    var mybody = Container(
      alignment: Alignment.center ,
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      margin: EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width:3)
            ),
            margin: EdgeInsets.all(50),
            alignment: Alignment.center,
            width: 310,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text('Arsh Mishra',style: TextStyle(color: Colors.red,fontSize: 24,fontWeight: FontWeight.bold),),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text("Arsh@1234.com"),
                ],)
              ],
            ),
          ),
        GestureDetector(
          onTap: myname,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/arshmishra007/Myimage/master/46710047_913998058795115_5955385572276043776_n.jpg'),
              fit: BoxFit.cover,
              ),
            //  color: Colors.red,
            borderRadius: BorderRadius.circular(50),
            border :Border.all(
              color: Colors.red,
              width:3,
            )
            ),
            width: 100,
            height: 100,
          ),

        )

        ],
      ),);
     
   

  


  return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(appBar: AppBar(
       title: Text('User Profile'),
       backgroundColor: Colors.red,
       actions: <Widget>[
         IconButton(icon: Icon(Icons.account_circle), onPressed: myname),
         IconButton(icon: Icon(Icons.add_a_photo), onPressed: something,)
       ],
     ),body: mybody,),
   );

    
   
  
}