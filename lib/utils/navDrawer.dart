import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key, required this.email, required this.username});

  final String email;
  final String username;

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      color: Color.fromARGB(255, 55, 14, 201),
                    ),
                    Transform.translate(
                      offset: Offset(16, 20),
                      child: CircleAvatar(
                        radius: 58,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Transform.rotate(
                              angle: math.pi/0.299,
                                child: Icon(
                              Icons.account_balance_wallet_outlined,
                              color: Colors.white,
                              size: 50,
                            )),
                            Text(
                              "PocketID",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(offset: Offset(250,25),child: Container(
                      height: 40,
                      width: 40,
                      decoration:  BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(26, 0, 0, 0),
                            blurRadius: 2.0,
                            spreadRadius: -2.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(56, 255, 255, 255),

                      ),
                      child: GestureDetector(
                        onTap: (){},
                        child: T,
                      ),
                    ),)
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
