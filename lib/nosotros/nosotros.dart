import 'package:flutter/material.dart';
import 'package:web_example/navbar/navbar.dart';

class Nosotros extends StatelessWidget {
  const Nosotros({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body:Container(
          decoration: BoxDecoration(
            gradient:LinearGradient(colors: [
              Color(0xFFD400C6),
              Color(0xFF1E88E5)
            ])
          ),
          child: ListView(
            children: <Widget>[
              NavBar(),
              SizedBox(height:50.0),
              _textNosotros(),
              SizedBox(height:50.0),
              _filaIconos()
            ],
          ),
        )
      ),
    );
  }
}

Widget _textNosotros(){
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text('Nosotros', style:TextStyle(color: Colors.white, fontSize:45.0, fontWeight: FontWeight.bold)),
      ),
      Container(
        height: 400,
        width: 900,
        alignment: Alignment.center,
        child: Text('En JP Designs nos ocupamos de brindar diseños hechos a la medida y acordes a las nuevas tendencias de diseño web, diseño gráfico, ilustraciones, prototipado de aplicaciones móviles, páginas web. Usamos diversas maneras para el diseño, según el requerimiento del cliente, las necesidades del usuario y las actualizaciones del momento', style: TextStyle(color: Colors.white, fontSize: 24.0,), textAlign: TextAlign.center,),
      ),
    ],
  );
}

Widget _filaIconos(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color:Colors.transparent,
              
            ),
            child: Image.asset('awesome-draw-polygon.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Ilustración', style: TextStyle(color: Colors.white, fontSize: 30.0)),
          )
        ],
      ),
      Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color:Colors.transparent,
              
            ),
            child: Image.asset('material-web.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Diseño Web', style: TextStyle(color: Colors.white, fontSize: 30.0)),
          )
        ],
      ),
      Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color:Colors.transparent,
              
            ),
            child: Image.asset('awesome-mobile-alt.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('App', style: TextStyle(color: Colors.white, fontSize: 30.0)),
          )
        ],
      )
      
    ],
  );
}

