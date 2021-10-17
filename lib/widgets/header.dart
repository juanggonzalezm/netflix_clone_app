import 'package:flutter/material.dart';
import 'package:netflix_clone_app/widgets/nav_bar_superior.dart';

class Header extends StatelessWidget {
  
  final NavBarSuperior navBarSuperior = NavBarSuperior();

  @override
  Widget build(BuildContext context) {
    return header();
  }

  Widget header() {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/avengers-endgame.jpg',
          height: 350.0,
          fit: BoxFit.fill,
        ),
        SafeArea(child: navBarSuperior.navBarSuperior()),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black38, Colors.black])),
        )
      ],
    );
  }
  
}