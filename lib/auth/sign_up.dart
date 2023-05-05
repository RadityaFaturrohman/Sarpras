import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/auth/components/authBottom.dart';
import 'package:sarpras/auth/components/authButton.dart';
import 'package:sarpras/auth/components/authErrorMessage.dart';
import 'package:sarpras/auth/components/authHeader.dart';
import 'package:sarpras/auth/components/socialCard.dart';
import 'package:sarpras/auth/set_profile.dart';
import 'package:sarpras/utils/constant.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
        title: "Create Account",
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
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool emailError = false;
  String? emailErrors = "yes";
  bool remember = false;
  final List<String> passwordErrors = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
      child: Form(
          child: Column(
            children: [
              emailTextFormField(),
              // AuthErrorMessage(text:"please input your first name"),
              SizedBox(height: 30,),
              passwordTextFormField(),
              SizedBox(height: 30,),
              cPasswordTextFormField(),
              SizedBox(height: 32,),
              AuthButton(
                text: "Continue",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SetProfile()));
                },
              ),

              Padding(padding: EdgeInsets.only(top: 42)),

              SocialCard(
                icon: "assets/icons/google.svg",
                press: (){},
              ),

              AuthBottom(
                text: "By continuing your confirm that you agree with our",
                spanText: " Terms & Conditions",
                navigateTo: SignUp(),
              ),

              SizedBox(height: 10,)
            ],
          )
      ),
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      validator: (value){
        if (value == null || value.isEmpty){
          setState(() {
            emailError = true;
            print('ys');
            print(emailError);
            emailErrors = emailNullError;
          });
        } else if(emailValidatorRegExp.hasMatch(value) ){
          setState(() {
            emailError = true;
            emailErrors = emailInvalidError;
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Enter your email",
        labelText: "Email",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.message, size: 28,),
        ),
      ),
    );
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
      validator: (value){
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Enter your password",
        labelText: "Password",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.lock, size: 28,),
        ),
      ),
    );
  }
  TextFormField cPasswordTextFormField() {
    return TextFormField(
      validator: (value){
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Re-enter your password",
        labelText: "Confirm Password",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(IconlyLight.lock, size: 28,),
        ),
      ),
    );
  }
}



