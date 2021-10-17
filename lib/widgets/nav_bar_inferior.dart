import 'package:flutter/material.dart';

class NavBarInferior extends StatelessWidget {
  
  const NavBarInferior({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return navBarInferior();
  }

  BottomNavigationBar navBarInferior() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,

      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Buscar'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          label: 'Proximamente'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          label: 'Descargas'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'Mas'
        )
      ],
    );
  }
  
}