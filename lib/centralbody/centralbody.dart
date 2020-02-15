import 'package:flutter/material.dart';

class CentralBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      child: Flex(
        direction: media.width >1200 ? Axis.horizontal :Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _textoCentral(),
          ImageRight()
        ],
      ),
    );
  }
}

Widget _textoCentral(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Diseño y Código\nA tú Alcance', style: TextStyle(color: Colors.white, fontSize: 32.0),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Nos ocupamos de brindar diseños hechos a la medida y acordes a las nuevas\ntendencias de diseño web, diseño gráfico, ilustraciones, prototipado \nde aplicaciones móviles, páginas web.', style: TextStyle(color: Colors.white, fontSize: 18.0)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: (){},
          child: Text('Nuestros Paquetes', style: TextStyle(color: Colors.blueAccent)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          color: Colors.white,
          elevation: 10,
        ),
      )
  
    ],
  );
}

class ImageRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 540,
      height: 540,
      decoration: BoxDecoration(
        color: Colors.transparent,
        image:DecorationImage(image: AssetImage('image-web.png'))
      ),
    );
  }
}