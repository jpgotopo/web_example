import 'package:flutter/material.dart';
import 'package:web_example/navbar/navbar.dart';
 
class Contactanos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
       
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF9931C5),
                  Color(0xFF512DA8)
                ]
                )
            ), 

            child: ListView(
              children: <Widget>[
                NavBar(),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Contáctanos', style: TextStyle(color: Colors.white, fontSize: 45.0, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 80.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                //image: DecorationImage(image: AssetImage('facebook.png'))
                              ),
                              child: Image.asset('facebook.png')
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('jpdesignsweb'),
                            )
                          ],
                        ),
                      ],
                      
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}