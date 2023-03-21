
import 'package:flutter/material.dart';
import 'package:only_pizza/screens/homescreen/provider/homeprovider.dart';
import 'package:only_pizza/screens/homescreen/view/homescreen.dart';
import 'package:only_pizza/screens/openscreen/provider/openprovider.dart';
import 'package:only_pizza/screens/openscreen/view/openscreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
        ChangeNotifierProvider(create: (context) => Openprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' :  (context) => Homescreen(),
          'open' :  (context) => Openscreen(),
        },
      ),
    ),
  );
}