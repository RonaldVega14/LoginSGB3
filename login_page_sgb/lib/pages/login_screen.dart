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

  
//Contruye todos los elementos y los muestra sobre la imagen de fondo
  Widget _buildContent(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildLogo(),
          LoginForm(),
          _buildButton(),
          _buildRegistration()
        ],
      ),
    );
  }

//Contruye el logo
  Widget _buildLogo(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height *0.20,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      margin: const EdgeInsets.fromLTRB(40.0, 35.0, 40.0,25.0),
      child: Image.asset(
        'assets/images/logosgb.png',
        ),
    );
  }

//Contruye el boton
  Widget _buildButton(){
    return Material(
      elevation: 3.0,
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width * .80,
        onPressed: (){},
        child: Text("Entrar",
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Roboto', fontSize: 14.0, color: Colors.white)
        ),
      ),
    );
  }

//Construye la linea de texto para registrarse.
  Widget _buildRegistration(){
    return Container(
        margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
        child: _buildRegistrationButton(),

    );
  }

  Widget _buildRegistrationButton(){
    return FlatButton(
      onPressed: (){},
      child: Text("REGÍSTRESE AQUÍ",
        
        textScaleFactor: 0.8,
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Roboto', fontSize: 14.0, color: Colors.white)
        ),
      );
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

}