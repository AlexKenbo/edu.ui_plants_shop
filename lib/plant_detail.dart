import 'package:flutter/material.dart';

class PlantDetail extends StatelessWidget {
  const PlantDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color(0xff399d63)),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: MediaQuery.of(context).size.width - 60,
                  ),
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color(0xff4da774),
                    mini: true,
                    elevation: 0.0,
                    child: Icon(
                      Icons.shopping_cart,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: MediaQuery.of(context).size.width - 30,
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Color(0xFF399d63),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'INDOOR',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8AC7A4)),
                      ),
                      Text(
                        'Ficus',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(height: 25.0),
                      Text(
                        'FROM',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8AC7A4)),
                      ),
                      Text(
                        '\$30',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(height: 25.0),
                      Text(
                        'SIZES',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8AC7A4)),
                      ),
                      Text(
                        'Small',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(height: 45.0),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.black),
                        child: Center(
                          child: Icon(Icons.shopping_cart, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: (MediaQuery.of(context).size.height / 2) - 260,
                  left: (MediaQuery.of(context).size.width / 2) - 80,
                  child: Image(
                    image: AssetImage('assets/whiteplant.png'),
                    fit: BoxFit.cover,
                    height: 350,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.height / 2) + 50,
                      left: 40.0,
                      right: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'All to know...',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'If you are completely new to houseplants then Ficus is a brilliant first plant to adopt, it is very easy to look after and won\'t occupy too much space.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        'Details',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Plant height: 35-45cm;',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'Nursery pot width: 12cm',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
