// ignore_for_file: prefer_const_constructors

import './appColor.dart';
import "package:flutter/material.dart";
import "package:provider/provider.dart";

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeApp(),
    );
  }
}

class homeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppColor>(
      create: (context) => AppColor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Consumer<AppColor>(
            builder: (context, appColor, _) => Text(
              'Provider State Manajement',
              style: TextStyle(
                color: appColor.warna,
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<AppColor>(
                builder: (context, appColor, _) => AnimatedContainer(
                  margin: EdgeInsets.all(10),
                  duration: Duration(milliseconds: 500),
                  width: 100,
                  height: 100,
                  color: appColor.warna,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text('AB'),
                  ),
                  Consumer<AppColor>(
                    builder: (context, appColor, _) => Switch(
                      value: appColor.isLblue,
                      onChanged: (value) {
                        appColor.isLblue = value;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text('LB'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
