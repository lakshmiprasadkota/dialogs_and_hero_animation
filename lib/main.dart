

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: HeroWidgetMain(),


    );

        }}
String photoURL =
    "https://cdn.pixabay.com/photo/2015/06/19/21/24/the-road-815297__340.jpg";

class HeroWidgetMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Widget'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(

              children: [

               RichText(text: TextSpan( text: "To Feel " , style: TextStyle(color: Colors.black),
               children: [

                 TextSpan(text: "Hero Animation Effect" , style: TextStyle(color: Colors.red, fontSize: 15)),

                 TextSpan(text: " touch pic" , style: TextStyle(color: Colors.blue, fontSize: 15)),
               ])),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        HeroWidgetDetail(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      return child;
                    },
                  )),
                  child: Hero(
                    tag: 'myImage',
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(photoURL),
                    ),
                  ),
                ),
              ],
            ),
          ),

             Text("Types of Dialogs"),

          RaisedButton(onPressed: (){
            createAlertDialog(context);
          },
          child: Text("Basic dialog"),),

          RaisedButton(onPressed: (){
            createSelectDialog(context);
          },
            child: Text("select dialog"),),

          RaisedButton(onPressed: (){
            createTextFieldDialog(context);
          },
            child: Text("TextField dialog"),),



        ],
      ),
    );
  }
  createAlertDialog(BuildContext context){
    var alertDialog  = AlertDialog(title: Text("delection completed"),

      content: Text("caches and junk file are  cleared "),



      semanticLabel: "king",
      actionsOverflowButtonSpacing: 30,
      buttonPadding: EdgeInsets.all(20) ,
      backgroundColor: Colors.grey,
      elevation: 0,scrollable: true,

      shape:  RoundedRectangleBorder(
        side: BorderSide(width: 5, color: Colors.green),
        borderRadius: BorderRadius.circular(10)
      ),
      actions:
      [GestureDetector(onTap: (){
        Navigator.pop(context);
      }, child: Text("ok"),
      ),
        ],
    );
    
    showDialog(context: context, builder:(BuildContext context){
      return alertDialog;
    });
  }


  createSelectDialog(BuildContext context){
    var alertDialog  = AlertDialog(
      title: Text("Select Product"),

      content:Column(
        children: [
          Text("Flutter"), Text("Flutter"), Text("Flutter"), Text("Flutter"),
        ],
      ),



      semanticLabel: "king",
      actionsOverflowButtonSpacing: 30,
      buttonPadding: EdgeInsets.all(20) ,
      backgroundColor: Colors.grey,
      elevation: 0,scrollable: true,


      shape:  RoundedRectangleBorder(
          side: BorderSide(width: 5, color: Colors.green),
          borderRadius: BorderRadius.circular(10)
      ),
      actions:
      [GestureDetector(onTap: (){
        Navigator.pop(context);
      }, child: Text("ok"),
      ),
      ],
    );

    showDialog(context: context, builder:(BuildContext context){

      return alertDialog;
    });
  }

  createTextFieldDialog(BuildContext context){
    var alertDialog  = AlertDialog(
      title: Text("enter here"),

      content:TextField(),



      semanticLabel: "king",
      actionsOverflowButtonSpacing: 30,
      buttonPadding: EdgeInsets.all(20) ,
      backgroundColor: Colors.grey,
      elevation: 0,scrollable: true,


      shape:  RoundedRectangleBorder(
          side: BorderSide(width: 5, color: Colors.green),
          borderRadius: BorderRadius.circular(10)
      ),
      actions:
      [GestureDetector(onTap: (){
        Navigator.pop(context);
      }, child: Text("ok"),
      ),
      ],
    );

    showDialog(context: context, builder:(BuildContext context){

      return alertDialog;
    });
  }
}
class HeroWidgetDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hero Detail Widget'),
        ),
        body: Container(
          color: Colors.amber,
          child: Center(
            child: Hero(
              tag: 'myImage',
              child: Image.network(photoURL),
            ),
          ),
        ));
  }
}