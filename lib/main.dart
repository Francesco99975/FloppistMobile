import 'package:flutter/material.dart';
import 'package:flutter_floppist_mobile/screens/about.dart';
import 'package:flutter_floppist_mobile/screens/home.dart';
import 'package:flutter_floppist_mobile/screens/sign_in.dart';
import 'package:flutter_floppist_mobile/screens/sign_up.dart';
import 'package:flutter_floppist_mobile/screens/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/loading': (context) => Loading(),
    '/sign_in': (context) => SignIn(),
    '/sign_up': (context) => SignUp(),
    '/about': (context) => About()
  },
));