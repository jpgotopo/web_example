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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconSocial(icono: 'facebook.png', cuenta: 'jpdesignsweb',),
                        IconSocial(icono: 'instagram.png', cuenta: 'jpdesignsweb',),
                        IconSocial(icono: 'twitter.png', cuenta: 'jpdesignsweb1',),
                        IconSocial(icono: 'behance.png', cuenta: 'jpgotopo',),
                      ],
                      
                    ),
                    Container(
                      child: Image.asset('texto-central.png')
                    ),
                    Transform.rotate(
                      angle: 25.0,
                      child: Container(
                        child: Image.asset('logo-opaco.png')
                      ),
                      
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

class IconSocial extends StatelessWidget {
  final String icono;
  final String cuenta;
  const IconSocial({
    Key key, @required this.icono, @required this.cuenta
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              
              image:DecorationImage(image: AssetImage(icono))
            ),
            //child: Image.asset('behance-icon.png')
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(cuenta, style: TextStyle(color: Colors.white, fontSize:20, fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}