import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:untitled/constant.dart';
import 'package:untitled/web_view_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RoundedLoadingButtonController _btnController1 = RoundedLoadingButtonController();
  final RoundedLoadingButtonController _btnController2 = RoundedLoadingButtonController();

  void _doSomething1() async {
    Timer(
      Duration(seconds: 1),
          () {
        url="https://ibrahimeissa.aidaform.com/obor-order";
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => WebViewPage()));
            },
    );
  }
  void _doSomething2() async {
    Timer(
      Duration(seconds: 1),
          () {
        url="https://ibrahimeiss.aidaform.com/expert-account-template-bakery-order-form";
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => WebViewPage()));
            },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedLoadingButton(
              controller: _btnController1,
              onPressed: _doSomething1,
              child: Text('Obor Order', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(
              height: 30,
            ),
            RoundedLoadingButton(
              controller: _btnController2,
              onPressed: _doSomething2,
              child: Text('Diarb Order', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}