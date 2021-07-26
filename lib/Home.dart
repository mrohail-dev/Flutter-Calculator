import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late int firstnum;
  late int Secondnum;
  String texttodisplay="";
  late String res;
  late String operatorsfrom;
  void btnclicked(String btnval){
    if(btnval=="C"){
      texttodisplay="";
      firstnum=0;
      Secondnum=0;
      res="0";
    }
    else if(btnval=="+"||btnval=="-"||btnval=="*"||btnval=="/")
      {
        firstnum=int.parse(texttodisplay);
        res="";
        operatorsfrom=btnval;
      }
    else if(btnval=="=")
      {
        Secondnum=int.parse(texttodisplay);
        if(operatorsfrom=="+")
          {
            res=(firstnum+Secondnum).toString();
          }
        if(operatorsfrom=="-")
        {
          res=(firstnum-Secondnum).toString();
        } if(operatorsfrom=="*")
        {
          res=(firstnum*Secondnum).toString();
        } if(operatorsfrom=="/")
        {
          res=(firstnum/Secondnum).toString();
        }
      }
    else
      {
      res=int.parse(texttodisplay+btnval).toString();
    }
    setState(() {
      texttodisplay=res;
    });
  }
  Widget custombutton (String btnval){
    return Expanded
      (
        child: OutlineButton
          (
          padding: EdgeInsets.all(25.0),
          onPressed: ()=>btnclicked(btnval),
          child: Text("$btnval",style: TextStyle(fontSize: 25.0),),
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("FLUTTER CALCULATOR")),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomRight,
              child: Text("$texttodisplay",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w600),),
            )),
            Row(
              children: <Widget>[
                custombutton("9"),
                custombutton("8"),
                custombutton("7"),
                custombutton("+"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("6"),
                custombutton("5"),
                custombutton("4"),
                custombutton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("3"),
                custombutton("2"),
                custombutton("1"),
                custombutton("*"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("C"),
                custombutton("0"),
                custombutton("="),
                custombutton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
