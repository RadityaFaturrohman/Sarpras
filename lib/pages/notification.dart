import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffE9E9E9),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                    flex: 0,
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: 20, top: 35, left: 25, right: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pop();
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Color(0xff454545),
                                      size: 16,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text(
                                      'Notification',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff454545)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                'Mark all as read',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6B9A7E)),
                              ),
                            ),
                          ],
                        ))),
                Flexible(
                  flex: 4,
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 32, right: 32),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 30, top: 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 85,
                                    width: 330,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: <Color>[
                                                Color(0xffE6E4E4),
                                                Color(0xffE6E4E4),
                                              ])),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 85,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: <Color>[
                                                      Color(0xffD9D9D9),
                                                      Color(0xffDDD6D6),
                                                    ])),
                                            child: Image.asset(
                                                'assets/proyektor.png'),
                                          ),
                                          Container(
                                            width: 230,
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                             horizontal: 2,
                                                            vertical: 2),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Product restocked',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff777777),
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 8),
                                                        ),
                                                        Icon(
                                                          Icons.circle,
                                                          color:
                                                              Color(0xffE45986),
                                                          size: 9,
                                                        )
                                                      ],
                                                    )),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text.rich(TextSpan(
                                                      text:
                                                          'Acer Essentials Projector ',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xff496956),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      children: <InlineSpan>[
                                                        TextSpan(
                                                          text:
                                                              ' on your wishlist has been restocked',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff454545),
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          ),
                                                        )
                                                      ])),
                                                ),
                                                Container(
                                                  child: Text(
                                                    '10 mins ago',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff968E8E),
                                                        fontSize: 8,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 15, bottom: 15),
                                    child: new Divider(
                                      color: Color.fromARGB(19, 150, 142, 142),
                                    ),
                                  ),
                                  Container(
                                    height: 85,
                                    width: 330,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: <Color>[
                                                Color(0xffE6E4E4),
                                                Color(0xffE6E4E4),
                                              ])),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 85,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: <Color>[
                                                      Color(0xffD9D9D9),
                                                      Color(0xffDDD6D6),
                                                    ])),
                                            child: Image.asset(
                                                'assets/proyektor.png'),
                                          ),
                                          Container(
                                            width: 230,
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                             horizontal: 2,
                                                            vertical: 2),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Product restocked',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff777777),
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 8),
                                                        ),
                                                        Icon(
                                                          Icons.circle,
                                                          color:
                                                              Color(0xffE45986),
                                                          size: 9,
                                                        )
                                                      ],
                                                    )),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text.rich(TextSpan(
                                                      text:
                                                          'Acer Essentials Projector ',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xff496956),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      children: <InlineSpan>[
                                                        TextSpan(
                                                          text:
                                                              ' on your wishlist has been restocked',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff454545),
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          ),
                                                        )
                                                      ])),
                                                ),
                                                Container(
                                                  child: Text(
                                                    '10 mins ago',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff968E8E),
                                                        fontSize: 8,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 15, bottom: 15),
                                    child: new Divider(
                                      color: Color.fromARGB(19, 150, 142, 142),
                                    ),
                                  ),
                                  Container(
                                    height: 85,
                                    width: 330,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 85,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: <Color>[
                                                      Color(0xffD9D9D9),
                                                      Color(0xffDDD6D6),
                                                    ])),
                                            child: Image.asset(
                                                'assets/proyektor.png'),
                                          ),
                                          Container(
                                            width: 230,
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                             horizontal: 2,
                                                            vertical: 2),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Product restocked',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff777777),
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 8),
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text.rich(TextSpan(
                                                      text:
                                                          'Acer Essentials Projector ',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xff496956),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      children: <InlineSpan>[
                                                        TextSpan(
                                                          text:
                                                              ' on your wishlist has been restocked',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff454545),
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          ),
                                                        )
                                                      ])),
                                                ),
                                                Container(
                                                  child: Text(
                                                    '10 mins ago',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff968E8E),
                                                        fontSize: 8,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 15, bottom: 15),
                                    child: new Divider(
                                      color: Color.fromARGB(19, 150, 142, 142),
                                    ),
                                  ),
                                  Container(
                                    height: 85,
                                    width: 330,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 85,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: <Color>[
                                                      Color(0xffD9D9D9),
                                                      Color(0xffDDD6D6),
                                                    ])),
                                            child: Image.asset(
                                                'assets/proyektor.png'),
                                          ),
                                          Container(
                                            width: 230,
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                             horizontal: 2,
                                                            vertical: 2),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Product restocked',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff777777),
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 8),
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text.rich(TextSpan(
                                                      text:
                                                          'Acer Essentials Projector ',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xff496956),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      children: <InlineSpan>[
                                                        TextSpan(
                                                          text:
                                                              ' on your wishlist has been restocked',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff454545),
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          ),
                                                        )
                                                      ])),
                                                ),
                                                Container(
                                                  child: Text(
                                                    '10 mins ago',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff968E8E),
                                                        fontSize: 8,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 15, bottom: 15),
                                    child: new Divider(
                                      color: Color.fromARGB(19, 150, 142, 142),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
