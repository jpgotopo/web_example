import 'package:flutter/material.dart';
import 'package:web_example/navbar/navbar.dart';

class Portafolio extends StatelessWidget {
  const Portafolio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF31640A),
            Color(0xFF4BE51E),
          ]),
        ),
        child: ListView(
          children: <Widget>[
            NavBar(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Portafolio', style: TextStyle(color:Colors.white, fontSize: 45.0, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            ), 
            Wrap(
              spacing: 12.0,
              alignment: WrapAlignment.center,
              children: <Widget>[
                SizedBox(width: media.width <=1000 ? media.width * 0.06 : media.width * 0.12),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/fs/ce508378149951.5c9c33eaea98c.jpg',),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/0f743982738569.5d26922848ec3.jpg'),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/c93bf977895925.5c94dcb88c1cf.jpg'),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/90c60477257321.5c823ac6504c5.png'),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/7d031678151153.5c9c4181abaad.jpg')
              ],
            ),
            Wrap(
              spacing: 12.0,
              alignment: WrapAlignment.center,
              children: <Widget>[
                SizedBox(width: media.width * 0.01),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/afbbe285590315.5d80ad397b126.jpg',),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/0f743982738569.5d26922848ec3.jpg'),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/fs/53b26779974787.5cd363cf29982.png'),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/015b5179974471.5cd3611531ec0.jpg'),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/fs/0d9eec79974587.5cd361eb3840b.png'),
                SizedBox(width: media.width <=1000 ? media.width * 0.06 : media.width * 0.12),
              ],
            ),
            Wrap(
              spacing: 12.0,
              alignment: WrapAlignment.center,
              children: <Widget>[
                SizedBox(width: media.width <=1000 ? media.width * 0.06 : media.width * 0.12),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/fs/e0edb479974715.5cd3630acfb2c.png',),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/bfe53192608167.5e4f2a4fb74ed.png'),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/cd73ca92608063.5e4f29747f773.png'),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/e880fe92608299.5e4f2b6ed15b0.jpg'),
                GalleryItem(imagen: 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/6688c392608367.5e4f2c7a52d3d.jpg')
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class GalleryItem extends StatelessWidget {
  final String imagen;
  GalleryItem({this.imagen});
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            
          ),
          margin: EdgeInsets.all(10),
          height: media.width <=1000 ? media.height * 0.06 : media.height * 0.15,
          width: media.width * 0.12,
          child: Image(image: NetworkImage(imagen),),
        ),
      ),
    );
  }
}
