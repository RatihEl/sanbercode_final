import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../model/doa.dart';
import '../utils/custom_widget.dart';
import 'all_doa_list.dart';
import 'detail_doa.dart';

class ListDoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(
                      left: 18.0, right: 18.0, bottom: 12.0, top: 6.0),
                  child: Text('Panduan Puasa Ramadhan', style: styleTitle)),
            ],
          ),
          Container(
            height: 350,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: dataListDoa.map((list) {
                return Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 8.0),
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(color: Colors.grey))
                      ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                primary: Color(0xfff7892b),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: Duration(seconds: 1),
                              transitionsBuilder:
                                  (context, animation, animationTime, child) {
                                animation = CurvedAnimation(
                                    parent: animation, curve: Curves.elasticInOut);
                                return ScaleTransition(
                                  scale: animation,
                                  alignment: Alignment.center,
                                  child: child,
                                );
                              },
                              pageBuilder: (context, animation, animationTime) {
                                return DetailDoa(
                                  title: list,
                                );
                              }));
                    },
                    child: ListTile(
                      title: Text(list.title, style: listTitle),
                      trailing: Icon(
                        size: 13,
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black))),
            child: ElevatedButton(
              // elevation: 0,
              // color: Colors.amber[300],
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 30),
                        transitionsBuilder:
                            (context, animation, animationTime, child) {
                          animation = CurvedAnimation(
                              parent: animation, curve: Curves.elasticInOut);
                          return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child,
                          );
                        },
                        pageBuilder: (context, animation, animationTime) {
                          return AllDoaList();
                        }
                        ));
              },

              child: Container(

                child: ListTile(
                  title: Center(
                    child: Text(
                      'Lihat Semua',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}