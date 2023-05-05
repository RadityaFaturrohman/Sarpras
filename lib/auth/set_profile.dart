import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/auth/components/authBottom.dart';
import 'package:sarpras/auth/components/authButton.dart';
import 'package:sarpras/auth/components/authHeader.dart';
import 'package:sarpras/auth/otp_verification.dart';
import 'package:sarpras/auth/sign_up.dart';
import 'package:sarpras/utils/constant.dart';

class SetProfile extends StatelessWidget {
  const SetProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            padding: EdgeInsets.only(left: 5),
            child: GestureDetector(
              onTap: (){Navigator.of(context).pop();},
              child: Icon(
                CupertinoIcons.chevron_left,
                weight: 1.5,
                color: Color(0xFF968E8E),
                size: 20,
              ),
            )
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Color(0xFF968E8E),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: AuthHeader(
        title: "Complete Profile",
        sub: "Complete your registration or continue with other platform",
        form: SignForm(),
      )
    );
  }
}

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
      child: Form(
          child: Column(
            children: [
              fTextFormField(),
              SizedBox(height: 30,),
              lTextFormField(),
              SizedBox(height: 30,),
              pNumTextFormField(),
              SizedBox(height: 35,),
              AuthButton(
                text: "Continue",
                onPressed: (){},
              ),
              SizedBox(height: 30,),
              AuthBottom(
                text: "By continuing your confirm that you agree with our",
                spanText: " Terms & Conditions",
                navigateTo: OtpVerification(),
              ),
            ],
          )
      ),
    );
  }

  TextFormField fTextFormField() {
    return TextFormField(
      validator: (value){
        return null;
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "Enter your first name",
        labelText: "First Name",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.profile, size: 28,),
        ),
      ),
    );
  }

  TextFormField lTextFormField() {
    return TextFormField(
      validator: (value){
        return null;
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "Enter your last name",
        labelText: "Last Name",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.profile, size: 28,),
        ),
      ),
    );
  }

  TextFormField pNumTextFormField() {
    return TextFormField(
      validator: (value){
        return null;
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: "Enter your phone number",
        labelText: "Phone Number",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.call, size: 28,),
        ),
      ),
    );
  }

}
