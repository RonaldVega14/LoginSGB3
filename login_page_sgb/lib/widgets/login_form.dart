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
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
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
            borderRadius: BorderRadius.circular(16.0)
          )
        ),
      ),
    );
  }
//Password Input
  Widget _buildPassInput(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
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
            borderRadius: BorderRadius.circular(16.0)
          )
        ),
      ),
    );
  }
  
//Creando la Interfaz de Usuario  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .25,
      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
      margin: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0),
      decoration: _buildShadowAndRoundedCorners(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(flex: 3, child: _buildUserInput(), fit: FlexFit.tight,),
          Flexible(flex: 3, child: _buildPassInput(), fit: FlexFit.tight,)
        ],
      ),
    );
  }
  
}