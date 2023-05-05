import 'package:flutter/material.dart';
import 'package:sarpras/pages/profile/editprofile.dart';
import 'package:sarpras/pages/profile/profile_page.dart';

class Akuninfo extends StatelessWidget {
  const Akuninfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            child:Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 150),
                  height: 330,
                  width: 400,
                  color: Color.fromRGBO(220, 220, 220, 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                          left: 20,
                          bottom: 80,
                        ),
                        child: TextButton(
                          onPressed: () {
                              Navigator.of(context).pop();
                            },
                          child: Icon(
                            Icons.arrow_back,
                            color: Color.fromRGBO(69, 69, 69, 100),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.only(
                          right: 175,
                          bottom: 80,
                        ),
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            color: Color.fromRGBO(69, 69, 69, 100),
                            fontFamily: "Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 80),
                      child: SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(image: AssetImage('images/raul.jpg')),
                        ),
                      ),
                    ),
                    // Spacer(),
                    // Container(
                    //   padding: EdgeInsets.only(
                    //     right: 40,
                    //   ),
                    //   child: Icon(
                    //     Icons.settings,
                    //     color: Color.fromRGBO(69, 69, 69, 100),
                    //   ),
                    // )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 160, top: 230),
                      child: Text(
                        "Raul Evans",
                        style: TextStyle(
                          color: Color.fromRGBO(69, 69, 69, 100),
                          fontFamily: "Poppins",
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.only(left: 120, top: 260),
                    child: SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                             Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Editprofile()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color.fromRGBO(255, 255, 255, 0.612),
                            side: BorderSide(
                                color: Color.fromRGBO(75, 105, 86, 100)),
                            shape: StadiumBorder(),
                          ),
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                                color: Color.fromRGBO(75, 105, 86, 100)),
                          )),
                    )),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 330,left: 5),
                      child: ListView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.person_2_outlined,
                                    color: Color.fromRGBO(69, 69, 69, 100),
                                    size: 22,
                                  ),
                                  horizontalTitleGap: -6,
                                  title: Text(
                                    "Username",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 15,
                                        color: Color.fromRGBO(150, 142, 142, 100),
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    "Raul Evans",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(69, 69, 69, 100),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.email_outlined,
                                    color: Color.fromRGBO(69, 69, 69, 100),
                                    size: 22,
                                  ),
                                  horizontalTitleGap: -6,
                                  title: Text(
                                    "Email",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 15,
                                        color: Color.fromRGBO(150, 142, 142, 100),
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    "Raul6@gmail.com",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(69, 69, 69, 100),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.phone,
                                    color: Color.fromRGBO(69, 69, 69, 100),
                                    size: 22,
                                  ),
                                  horizontalTitleGap: -6,
                                  title: Text(
                                    "Phone Number",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 15,
                                        color: Color.fromRGBO(150, 142, 142, 100),
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    "+21 3152 8765",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(69, 69, 69, 100),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.lock,
                                    color: Color.fromRGBO(69, 69, 69, 100),
                                    size: 22,
                                  ),
                                  horizontalTitleGap: -6,
                                  title: Text(
                                    "Password",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 15,
                                        color: Color.fromRGBO(150, 142, 142, 100),
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    ".................",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(69, 69, 69, 100),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.location_on_outlined,
                                    color: Color.fromRGBO(69, 69, 69, 100),
                                    size: 22,
                                  ),
                                  horizontalTitleGap: -6,
                                  title: Text(
                                    "Adress",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 15,
                                        color: Color.fromRGBO(150, 142, 142, 100),
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    "Indonesia, Jawa Barat, Depok",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(69, 69, 69, 100),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
