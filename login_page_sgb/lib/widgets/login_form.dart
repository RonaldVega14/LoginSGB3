import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
//Shadow of login form
  BoxDecoration _buildShadowAndRoundedCorners(){
    return BoxDecoration(
      color: Colors.white.withOpacity(0.4),
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          spreadRadius: 2.0,
          blurRadius: 10.0,
          color: Colors.black26
        )
      ]
    );
  }
//User Input
  Widget _buildUserInput(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: TextFormField(
        validator: (val) => !val.contains('@') ? 'Usuario Incorrecto' :null,
        onSaved: (val) => val,
        style: TextStyle(fontFamily: 'Roboto', fontSize: 14.0, color: Colors.black),
        decoration: InputDecoration(
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.person),
          labelText: 'Usuario',
          contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0)
          )
        ),
      ),
    );
  }
//Password Input
  Widget _buildPassInput(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: TextFormField(
        validator: (val) => !val.contains('@') ? 'Usuario Incorrecto' :null,
        onSaved: (val) => val,
        style: TextStyle(fontFamily: 'Roboto', fontSize: 14.0, color: Colors.black),
        decoration: InputDecoration(
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.vpn_key),
          labelText: 'Contraseña',
          contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0)
          )
        ),
      ),
    );
  }

//Olvido su usuario
  Widget _buildForgotUser(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      child: FlatButton(
        onPressed: (){},
        child: Text("¿Olvidó su usuario?",
          textScaleFactor: 0.9,
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Roboto', fontSize: 14.0, color: Colors.black54)),
      )
    );
  }

//Olvido su contraseña
  Widget _buildForgotPass(){
    return FlatButton(
      onPressed: (){},
      child: Text("¿Olvidó su contraseña?",
        textScaleFactor: 0.8,
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Roboto', fontSize: 14.0, color: Colors.black54)),
      );
  }
  
//Creando la Interfaz de Usuario  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .30,
      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
      margin: const EdgeInsets.fromLTRB(15.0, 16.0, 15.0, 16.0),
      decoration: _buildShadowAndRoundedCorners(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(flex: 3, child: _buildUserInput(), fit: FlexFit.tight,),
          Flexible(flex: 3, child: _buildPassInput(), fit: FlexFit.tight,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(flex: 1, child: _buildForgotUser(), fit: FlexFit.loose),
              Flexible(flex: 1, child: _buildForgotPass(), fit: FlexFit.tight)
            ],
          )
        ],
      ),
    );
  }
  
}