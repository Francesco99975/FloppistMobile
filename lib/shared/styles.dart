import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
                  fillColor: Colors.yellow,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 2.0,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    borderSide: BorderSide(
                      color: Colors.indigo,
                      width: 2.0
                    )
                  ),
                );