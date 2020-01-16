import 'package:flutter/material.dart';
import 'package:flutter_floppist_mobile/models/route.dart';

BuildContext sharedContext;

final List<CRoute> routes = [
    CRoute(name: 'Home', route: '/', icon: Icons.home),
    CRoute(name: 'Log In', route: '/sign_in', icon: Icons.person),
    CRoute(name: 'Sign Up', route: '/sign_up', icon: Icons.people),
    CRoute(name: 'About', route: '/about', icon: Icons.info)
  ];

List<Widget> _buildNav(BuildContext context) {
    return routes.map((route) {
      return ListTile(
        contentPadding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 3.0),
        leading: Icon(
            route.icon,
            color: Colors.yellow[500],
          ),
        title: Text(
            route.name,
            style: TextStyle(
                color: Colors.yellow[500],
                fontSize: 16.0,
                letterSpacing: 1.5
            ),
          ),
        onTap: () {
            Navigator.pushNamed(context, route.route);
        },
      );
    }).toList();
  }

final AppBar appBar = AppBar(
        backgroundColor: Colors.blue[700],
        leading: Builder(
          builder: (context) {
            return Image.asset('assets/sslogo.png');
          },
        ),
        title: Text(
          'FLOPPIST',
          style: TextStyle(
            color: Colors.yellow[500],
            letterSpacing: 1.5
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.yellow[500],
                  size: 28.0,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                }
              ); 
            },
          )
        ],
      );

final Drawer drawer = Drawer(
        child: Container(
          color: Colors.blue[800],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'FLOPPIST',
                        style: TextStyle(
                          color: Colors.yellow[500],
                          fontSize: 18.0,
                          letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Image.asset(
                        'assets/sslogo.png', 
                        height: 80.0, 
                        width: 80.0,
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(color: Colors.blue[700]),
              ),
              ..._buildNav(sharedContext),
            ],
          ),
        ),
      );