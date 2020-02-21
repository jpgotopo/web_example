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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                
                                image: DecorationImage(image: NetworkImage('https://image.flaticon.com/icons/svg/1400/1400477.svg'), fit: BoxFit.fill)
                              ),
                              //child: Image.asset('behance.png')
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('jpdesignsweb', style: TextStyle(color: Colors.white, fontSize:20, fontWeight: FontWeight.bold),),
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