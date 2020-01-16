import 'package:flutter/material.dart';
import 'package:flutter_floppist_mobile/shared/app_bar.dart';
import 'package:flutter_floppist_mobile/shared/styles.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();

  String username = '';
  String password = '';
  String repassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      appBar: appBar,
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.yellow[600],
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5
                  ),
                ),
                SizedBox(height: 30.0,),
                Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Username'),
                          validator: (val) => val.isEmpty ? 'Enter a Username' : null,
                          onChanged: (val) => setState(() => username = val),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Password'),
                          obscureText: true,
                          validator: (val) => val.isEmpty ? 'Enter a Password' : null,
                          onChanged: (val) => setState(() => password = val),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Re-Type Password'),
                          obscureText: true,
                          validator: (val) => val.isEmpty ? 'Re-Type the Password' : null,
                          onChanged: (val) => setState(() => repassword = val),
                        ),
                        SizedBox(height: 10,),
                        FlatButton(
                          padding: EdgeInsets.all(3.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.teal)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'SIGN UP',
                                style: TextStyle(
                                  color: Colors.blue[700],
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Icon(
                                Icons.send,
                                color: Colors.blue[700],
                              ),
                            ],
                          ),
                          onPressed: () {
                            if(_formKey.currentState.validate()) {
                              print('$username - $password');
                            }
                          },
                          color: Colors.yellow[500],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.teal,
    );
  }
}