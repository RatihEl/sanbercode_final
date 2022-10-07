import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xfffbb448),
  leading: BackButton(
     color: Colors.white
   ), 
),
        body: Column(
      children: <Widget>[
        SizedBox(height: 15,),
        CircleAvatar(
            radius: 50, backgroundImage: AssetImage('assets/img/profile.jpg')),
        ListTile(
          title: Center(
            child: Text(
              "Ratih Eldina",
              style: TextStyle(fontSize: 20),
            ),
          ),
          subtitle: Center(
            child: Text("Junior Software Developer",
                style: TextStyle(fontSize: 15)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text("Message", style: TextStyle(color: Color(0xfffbb448)),),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Hire Me", style: TextStyle(color: Color(0xfffbb448)),),
            ),
          ],
        ),
        ListTile(
          title: Text("About Me", style: TextStyle(fontSize: 20)),
          subtitle: Text(
              "Over 8 years of Experience in Software Development.We are leading with professional team skilled to achieve customer satisfaction. We focus on creativity and comprehensive mobile and web solution to make the technology a credit to your business.",
              style: TextStyle(fontSize: 15)),
        )
      ],
    ));
  }
}
