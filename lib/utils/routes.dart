import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:sarpras/auth/login_success.dart';
import 'package:sarpras/auth/sign_in.dart';

final Map<String, WidgetBuilder> routes = {
  SignIn.routeName: (context) => SignIn(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
};