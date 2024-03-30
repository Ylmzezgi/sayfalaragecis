import 'package:flutter/material.dart';
import 'package:gecisvemap/main.dart';
import 'package:gecisvemap/sayfadeneme1.dart';

class anasayfab extends StatelessWidget {
  int ? a;

  anasayfab(this.a);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anasayfa8'),
      ),
      backgroundColor: Colors.cyan,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if(a==3){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            }
            else if(a==1){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => anasayfac()));
            }
            //Navigator.push(context, MaterialPageRoute(builder:(context)=>MyApp()));

          },
          child: null,
        ),
      ),
    );
  }
}
