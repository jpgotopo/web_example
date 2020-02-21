import 'package:flutter/material.dart';
import 'package:web_example/contactanos/contactanos.dart';
import 'package:web_example/main.dart';
import 'package:web_example/nosotros/nosotros.dart';
import 'package:web_example/portafolio/portafolio.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth>1200){
          return DesktopNavBar();
        } else if(constraints.maxWidth> 800 && constraints.maxWidth<1200){
          return DesktopNavBar();
        } else {
          return MobileNavBar();
        }
      }
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal:40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _logoJPD(),
            _menuNavBar(context)
          ],
        ),
      ),
    );
  }
}

Widget _logoJPD(){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 80, height: 80,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('logo-jpd-new.png'))
          ),
         
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('JPDESIGNS', style: TextStyle(color: Colors.white, fontSize: 32)),
        )
      ],
    ),
  );
}

Widget _menuNavBar(BuildContext context){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: FlatButton(child: Text('Inicio', style: TextStyle(color: Colors.white)), 
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => MyApp()));
          },),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: FlatButton(child: Text('Nosotros', style: TextStyle(color: Colors.white)),
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Nosotros()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: FlatButton(child: Text('Portafolio', style: TextStyle(color: Colors.white)),
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Portafolio()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: FlatButton(child: Text('Contáctanos', style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Contactanos()));
            },
          
          ),
        ),
      ],
    ),
  );
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: _logoJPD(),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: _menuNavBar(context),
          )
        ],
      ),
    );
  }
}