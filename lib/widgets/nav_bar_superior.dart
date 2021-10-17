import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  
  const NavBarSuperior({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return navBarSuperior();
  }

  Widget navBarSuperior() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/images/netflix_logo.jpg',
          width: 30.0,
        ),
        Text(
          'Programas',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          'Películas',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          'Mi Lista',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ],
    );
  }

}