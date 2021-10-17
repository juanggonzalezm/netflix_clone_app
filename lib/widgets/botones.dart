import 'dart:math';

import 'package:flutter/material.dart';

class Botones extends StatelessWidget {
  
  const Botones({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return botones();
  }

  Widget botones() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.check, color: Colors.white),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Mi Lista',
                  style: TextStyle(color: Colors.white, fontSize: 9.0),
                ),
              ],
            ),
            Column(
              children: [
                TextButton.icon(
                  onPressed: () => { print("Reproducir Action") },
                  icon: Icon(
                    const IconData(983200, fontFamily: 'MaterialIcons'),
                    color: Colors.white,
                  ), 
                  label: Text(
                    'Reproducir',
                    style: TextStyle(color: Colors.white)
                    )
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.info_outline, color: Colors.white),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Información',
                  style: TextStyle(color: Colors.white, fontSize: 9.0),
                ),
              ],
            ),
          ],
        )
      );
  }
  
}