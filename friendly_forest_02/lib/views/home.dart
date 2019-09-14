import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:friendly_forest_02/router.dart';
import 'package:friendly_forest_02/utils.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: AllAlign,
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 37,
                    ),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, infoViewRoute);
                    },
                  ),
                  Spacer(),
                  IconButton(
                    icon: new Icon(
                      const IconData(0xe900, fontFamily: 'Menu Dot'),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: SizeBoxSize,
              ),
              Padding(
                padding: HomePageAlign,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Charity Campaign',
                    style: headerTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
