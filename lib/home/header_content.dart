import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'aboutme.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget> [
        ClipPath(
          clipper: BackgroundClip(),
          child: Container(
            height: 300.0,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xfff7892b),
                    Color(0xfffbb448),
                  ],
                )
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 20,),
            Container(
              child: IconButton(
            icon: Icon(
              Icons.person,
            ),
            iconSize: 25,
            color: Colors.white,
            splashColor: Colors.purple,
            onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AboutPage()));
            },
          ),
            ),
            Container(
              margin: EdgeInsets.only(top:50),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Image(
                          image:AssetImage('assets/img/icon.png'),width:100.0),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children:  <Widget>[
                        Text('Ramadhan Application',
                            style: TextStyle(fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text('Marhaban Ya Ramadhan',
                          style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}


class BackgroundClip extends CustomClipper <Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}