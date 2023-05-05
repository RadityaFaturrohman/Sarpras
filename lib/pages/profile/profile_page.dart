import 'package:flutter/material.dart';
import 'package:sarpras/pages/profile/accountinfo.dart';
import 'package:sarpras/pages/profile/editprofile.dart';
import 'package:sarpras/utils/constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          width: double.infinity,
          color: CusColors.whiteMain,
          padding: EdgeInsets.only(top: 40, bottom: 35),
          child: Column(
            children: [
              Text(
                  "Profile",
                  style: TextStyle(
                    color: CusColors.titleColor,
                    fontSize: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                  )
              ),
              SizedBox(
                height: 28,
              ),
              CircleAvatar(
                maxRadius: 70,
                backgroundImage: AssetImage('assets/raul.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Raul Evans",
                style: TextStyle(
                  fontSize: 20,
                  color: CusColors.titleColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                  "raul6@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: CusColors.subTitleColor,
                  fontSize: 13
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 135,
                height: 41,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(width: 1, color: CusColors.subTitleColor)
                            )
                        ),
                        backgroundColor: MaterialStateProperty.all(CusColors.whiteMain)
                    ),
                    onPressed: (){},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: CusColors.grey200,
                        fontSize: 12,
                      ),
                    )
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 5),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akuninfo()));
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.person_2_outlined,
                            color: Color.fromRGBO(69, 69, 69, 100),
                            size: 22,
                          ),
                          horizontalTitleGap: -6,
                          title: Text(
                            "Account Information",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                color: Color.fromRGBO(69, 69, 69, 100),
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500),
                          ),
                          trailing: Container(
                            child: Icon(Icons.arrow_right),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 380,
                        padding: EdgeInsets.only(left: 20),
                        child: Divider()),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akuninfo()));
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.settings_outlined,
                            color: Color.fromRGBO(69, 69, 69, 100),
                            size: 22,
                          ),
                          horizontalTitleGap: -6,
                          title: Text(
                            "Appearance",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                color: Color.fromRGBO(69, 69, 69, 100),
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500),
                          ),
                          trailing: Container(
                            child: Icon(Icons.arrow_right),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 380,
                        padding: EdgeInsets.only(left: 20),
                        child: Divider()),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akuninfo()));
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.settings_outlined,
                            color: Color.fromRGBO(69, 69, 69, 100),
                            size: 22,
                          ),
                          horizontalTitleGap: -6,
                          title: Text(
                            "Loan History",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                color: Color.fromRGBO(69, 69, 69, 100),
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500),
                          ),
                          trailing: Container(
                            child: Icon(Icons.arrow_right),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 380,
                        padding: EdgeInsets.only(left: 20),
                        child: Divider()),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akuninfo()));
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.report,
                            color: Color.fromRGBO(69, 69, 69, 100),
                            size: 22,
                          ),
                          horizontalTitleGap: -6,
                          title: Text(
                            "Report an issue",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                color: Color.fromRGBO(69, 69, 69, 100),
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500),
                          ),
                          trailing: Container(
                            child: Icon(Icons.arrow_right),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 380,
                        padding: EdgeInsets.only(left: 20),
                        child: Divider()),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akuninfo()));
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.settings_outlined,
                            color: Color.fromRGBO(69, 69, 69, 100),
                            size: 22,
                          ),
                          horizontalTitleGap: -6,
                          title: Text(
                            "FAQ",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                color: Color.fromRGBO(69, 69, 69, 100),
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500),
                          ),
                          trailing: Container(
                            child: Icon(Icons.arrow_right),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: SizedBox(
                    width: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                        Colors.white,
                        side: BorderSide(
                            color: Color.fromRGBO(75, 105, 86, 100)),
                        shape: StadiumBorder(),
                      ),
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                            color: Color.fromRGBO(75, 105, 86, 100)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
