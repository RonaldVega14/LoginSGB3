import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:login_page_sgb/widgets/login_form.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
    
    
  }
  
  class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin {
  
  @override
  void initState(){
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/bg_sgb.jpg',
            fit:BoxFit.cover
          ),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildContent(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildLogo(),
          LoginForm(),
        ],
      ),
    );
  }

  Widget _buildLogo(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      margin: const EdgeInsets.fromLTRB(40.0, 35.0, 40.0,20.0),
      child: Image.asset(
        'assets/images/logo_sgb.png',
        ),
    );
  }

}