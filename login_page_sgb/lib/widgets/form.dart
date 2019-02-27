import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {

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

  Widget _buildThumbnail(){
    return Placeholder();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: _buildShadowAndRoundedCorners(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
  
}