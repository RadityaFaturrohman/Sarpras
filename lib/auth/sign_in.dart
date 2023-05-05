import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/auth/components/authBottom.dart';
import 'package:sarpras/auth/components/authButton.dart';
import 'package:sarpras/auth/components/authErrorMessage.dart';
import 'package:sarpras/auth/components/authHeader.dart';
import 'package:sarpras/auth/components/socialCard.dart';
import 'package:sarpras/auth/forgot_password.dart';
import 'package:sarpras/auth/login_success.dart';
import 'package:sarpras/auth/sign_up.dart';
import 'package:sarpras/utils/constant.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  static String routeName = "/sign_in";
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
          "Sign In",
          style: TextStyle(
            color: Color(0xFF968E8E),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: AuthHeader(
        title: "Sign In",
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
  String? emailErrors = "yes";
  bool emailError = false;
  bool remember = false;
  final List<String> passwordErrors = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22,),
      child: Form(
          child: Column(
            children: [
              emailFormField(),
              emailError ?
              AuthErrorMessage(text: emailErrors.toString(),):
              SizedBox(height: 30,),
              passwordTextFormField(),
              SizedBox(height: 12,),
              Row(
                children: [
                  Checkbox(
                      value: remember,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      fillColor: MaterialStatePropertyAll(CusColors.grey100),
                      activeColor: CusColors.mainColor,
                      onChanged: (value){
                        setState(() {
                          remember = !remember;
                        });
                      },
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        remember = !remember;
                      });
                    },
                    child: Text(
                        "Remember me",
                      style: TextStyle(
                        color: CusColors.grey300,
                        fontSize: 15,
                        letterSpacing: .2
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ForgotPassword()));},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: CusColors.mainColor,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 18,),
              AuthButton(
                text: "Continue",
                onPressed: (){
                  // if(_formKey.currentState!.validate()){
                  //   print('yes');
                  // };}
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginSuccess()));}
              ),
              Padding(padding: EdgeInsets.only(top: 42)),

              SocialCard(icon: "assets/icons/google.svg",),

              AuthBottom(
                text: "Doesn't have an account",
                spanText: " Sign Up here",
                navigateTo: SignUp(),
              )
            ],


          )
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

  TextFormField emailFormField() {
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
}

