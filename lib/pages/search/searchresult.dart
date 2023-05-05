import 'package:flutter/material.dart';
import 'package:sarpras/pages/components/cardList.dart';
import 'package:sarpras/pages/components/smallCard.dart';
import 'package:get/get.dart';

class Searchresult extends StatelessWidget {
  const Searchresult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffE7E7E7),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 0,
                  child: Container(
                    color: Color(0xffDCDCDC),
                    padding: EdgeInsets.only(top: 40, right: 10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, bottom: 5),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: ()=>Get.back(),
                                child: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Color(0xff454545),
                                  size: 16,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: 36,
                                width: 290,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(233, 233, 233, 100),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color:
                                          Color.fromRGBO(150, 142, 142, 100)),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.search,
                                        size: 20,
                                        color:
                                            Color.fromRGBO(150, 142, 142, 100),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 9, bottom: 13),
                                            hintText: 'Acer',
                                            hintStyle: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13,
                                                color: Color.fromRGBO(
                                                    150, 142, 142, 100)),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Container(
                                //    margin:
                                //       EdgeInsets.only(bottom: 15, right: 10),
                                //   width: 60,
                                //   height: 55,
                                //   child: TextButton(
                                //     onPressed: () {},
                                //     child: Column(
                                //       children: [
                                //         Container(
                                //           width: 60,
                                //            height: 40,
                                //           decoration: BoxDecoration(
                                //               gradient: const LinearGradient(
                                //                   begin: Alignment.topLeft,
                                //                   end: Alignment.bottomRight,
                                //                   colors: <Color>[
                                //                     Color(0xffD7D7D7),
                                //                     Color(0xffD7D7D7),
                                //                   ]),
                                //               border: Border.all(
                                //                   color: Color(0xffCDCDCD)),
                                //               borderRadius:
                                //                   BorderRadius.circular(4)),
                                //           child: Icon(
                                //             Icons.display_settings,
                                //             color: Color(0xff454545),
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),

                                Container(
                                  width: 50,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border:
                                          Border.all(color: Color(0xffCDCDCD)),
                                      gradient: const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: <Color>[
                                            Color(0xffD7D7D7),
                                            Color(0xffD7D7D7),
                                          ])),
                                  margin:
                                      EdgeInsets.only(bottom: 15, right: 10),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 4),
                                            height: 40,
                                            child: Icon(
                                              Icons.display_settings,
                                              color: Color(0xff496956),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                  width: 140,
                                  height: 55,
                                  margin:
                                      EdgeInsets.only(bottom: 15, right: 10),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                            color: Color(0xffCDCDCD)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                border: Border.all(
                                                    color: Color(0xffCDCDCD)),
                                                gradient: const LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: <Color>[
                                                      Color(0xffD7D7D7),
                                                      Color(0xffD7D7D7),
                                                    ])),
                                            child: Icon(
                                              Icons.display_settings,
                                              color: Color(0xff496956),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Electronic',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xff454545)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 55,
                                  margin:
                                      EdgeInsets.only(bottom: 15, right: 10),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                            color: Color(0xffCDCDCD)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                border: Border.all(
                                                    color: Color(0xffCDCDCD)),
                                                gradient: const LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: <Color>[
                                                      Color(0xffD7D7D7),
                                                      Color(0xffD7D7D7),
                                                    ])),
                                            child: Icon(
                                              Icons.display_settings,
                                              color: Color(0xff496956),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Electronic',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xff454545)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 55,
                                  margin:
                                      EdgeInsets.only(bottom: 15, right: 10),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                            color: Color(0xffCDCDCD)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                border: Border.all(
                                                    color: Color(0xffCDCDCD)),
                                                gradient: const LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: <Color>[
                                                      Color(0xffD7D7D7),
                                                      Color(0xffD7D7D7),
                                                    ])),
                                            child: Icon(
                                              Icons.display_settings,
                                              color: Color(0xff496956),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Electronic',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xff454545)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 55,
                                  margin:
                                      EdgeInsets.only(bottom: 15, right: 10),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                            color: Color(0xffCDCDCD)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                border: Border.all(
                                                    color: Color(0xffCDCDCD)),
                                                gradient: const LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: <Color>[
                                                      Color(0xffD7D7D7),
                                                      Color(0xffD7D7D7),
                                                    ])),
                                            child: Icon(
                                              Icons.display_settings,
                                              color: Color(0xff496956),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Electronic',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xff454545)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 55,
                                  margin: EdgeInsets.only(
                                    bottom: 15,
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                            color: Color(0xffCDCDCD)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                border: Border.all(
                                                    color: Color(0xffCDCDCD)),
                                                gradient: const LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: <Color>[
                                                      Color(0xffD7D7D7),
                                                      Color(0xffD7D7D7),
                                                    ])),
                                            child: Icon(
                                              Icons.display_settings,
                                              color: Color(0xff496956),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Electronic',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xff454545)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 20, left: 15, right: 15, bottom: 10),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 180,
                                    width: 150,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: <Color>[
                                                Color(0xffE1E1E1),
                                                Color(0xffE1E1E1),
                                              ])),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 110,
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                gradient: const LinearGradient(
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
                                            padding: const EdgeInsets.only(
                                              top: 6,
                                              left: 6,
                                              right: 6,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 3,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: const [
                                                        Text(
                                                          'Projector',
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
                                                  margin: const EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text(
                                                      'Acer Essentials Projector',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff454545),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Poppins')),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 5,
                                                left: 5,
                                                right: 5,
                                                bottom: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '3 stock',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w200),
                                                ),
                                                Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: Colors.black,
                                                  size: 17,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 150,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: <Color>[
                                                Color(0xffE1E1E1),
                                                Color(0xffE1E1E1),
                                              ])),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 110,
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                gradient: const LinearGradient(
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
                                            padding: const EdgeInsets.only(
                                              top: 6,
                                              left: 6,
                                              right: 6,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 3,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: const [
                                                        Text(
                                                          'Projector',
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
                                                  margin: const EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text(
                                                      'Acer Essentials Projector',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff454545),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Poppins')),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 5,
                                                left: 5,
                                                right: 5,
                                                bottom: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '3 stock',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w200),
                                                ),
                                                Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: Colors.black,
                                                  size: 17,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 180,
                                    width: 150,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: <Color>[
                                                Color(0xffE1E1E1),
                                                Color(0xffE1E1E1),
                                              ])),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 110,
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                gradient: const LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: <Color>[
                                                      Color(0xffD7D7D7),
                                                      Color(0xffD7D7D7),
                                                    ])),
                                            child: Image.asset(
                                                'assets/proyektor.png'),
                                          ),
                                          Container(
                                            width: 230,
                                            padding: const EdgeInsets.only(
                                              top: 6,
                                              left: 6,
                                              right: 6,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 3,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: const [
                                                        Text(
                                                          'Projector',
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
                                                  margin: const EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text(
                                                      'Acer Essentials Projector',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff454545),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Poppins')),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 5,
                                                right: 5,
                                                bottom: 5,
                                                top: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '3 stock',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w200),
                                                ),
                                                Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: Colors.black,
                                                  size: 17,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 150,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: <Color>[
                                                Color(0xffE1E1E1),
                                                Color(0xffE1E1E1),
                                              ])),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 110,
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                gradient: const LinearGradient(
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
                                            padding: const EdgeInsets.only(
                                              top: 6,
                                              left: 6,
                                              right: 6,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 3,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: const [
                                                        Text(
                                                          'Projector',
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
                                                  margin: const EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text(
                                                      'Acer Essentials Projector',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff454545),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Poppins')),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 5,
                                                right: 5,
                                                bottom: 5,
                                                top: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '3 stock',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w200),
                                                ),
                                                Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: Colors.black,
                                                  size: 17,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CardList(
                                title: "Perfect for you",
                                child: Wrap(
                                  spacing: 20,
                                  children: [
                                    SmallCard(
                                      image: "assets/proyektor.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                    SmallCard(
                                      image: "assets/ae.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                    SmallCard(
                                      image: "assets/proyektor.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                    SmallCard(
                                      image: "assets/proyektor.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                    SmallCard(
                                      image: "assets/proyektor.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                    SmallCard(
                                      image: "assets/proyektor.png",
                                      category: "Projector",
                                      name: "Acer Essentials Projector",
                                      stock: 3,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
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
