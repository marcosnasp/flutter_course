import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(new MaterialThemeApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: Text("Hello World!",
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr ,),);
  }

}

class MaterialThemeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var appBar = AppBar(
      title: Text('UFMA App'),
      actions: <Widget>[
      Icon(FontAwesomeIcons.accessibleIcon),
      IconButton(icon: Icon(Icons.ac_unit), onPressed: (){

      },),
      Icon(FontAwesomeIcons.gamepad)
      ],
    );

    var bodyContainer = Container(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text("Flutter Label",
            textAlign: TextAlign.left,
            overflow: TextOverflow.fade,),
          TextField(textAlign: TextAlign.left,
            decoration: InputDecoration(border: OutlineInputBorder()),),
          CircularProgressIndicator(),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
            RaisedButton(child: Text('RaisedButton'), onPressed: () {

            },),
            OutlineButton(child: Text('OutlineButton'), onPressed: () {

            },),
            FlatButton(child: Text('Flat'), onPressed: (){

            },)
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Checkbox(value: true, onChanged: (change) {

            },),
            Radio<int>(value: 1, onChanged: (valor) {},),
            Switch(value: true, onChanged: (valor) {},)
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(child: Icon(FontAwesomeIcons.addressBook),)
            ],
          ),
          Image.network('http://www.gstatic.com/webp/gallery/4.jpg', ),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar: appBar,
        body: SingleChildScrollView(child: bodyContainer,),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(title: Text("Apps"), icon: Icon(Icons.apps)),
              BottomNavigationBarItem(title: Text("Accounts"), icon: Icon(Icons.account_balance)),
              BottomNavigationBarItem(title: Text("Favorites"), icon: Icon(Icons.favorite))
            ]),
      ),
    );
  }

}
