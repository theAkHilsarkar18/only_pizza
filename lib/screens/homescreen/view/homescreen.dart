import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:only_pizza/screens/homescreen/provider/homeprovider.dart';
import 'package:provider/provider.dart';

import '../../openscreen/provider/openprovider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homeprovider? homeprovider;

  @override
  Widget build(BuildContext context) {
    homeprovider = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Only Pizza ",
                    style: GoogleFonts.poppins(
                        color: Colors.blue.shade700,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "r",
                    style: GoogleFonts.aBeeZee(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Icon(
                    Icons.all_inclusive,
                    color: Colors.red,
                    size: 38,
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Text(
                    "m",
                    style: GoogleFonts.aBeeZee(
                        color: Colors.red,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                    height: 300,
                    width: double.infinity,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 1),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Provider.of<Openprovider>(context,listen: false).initURLmethod(index);
                          Navigator.pushNamed(context, 'open');
                        },
                      child: logoBoxUI(homeprovider!.logoImgList[index],homeprovider!.pizzaName[index])),
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: 8,
                    )))
          ],
        ),
      ),
    );
  }

  Widget logoBoxUI(String imgPath,String pizzaName) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            //border: Border.all(color: Colors.blue.shade700,width: 2)
          ),
          child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.asset("${imgPath}",fit: BoxFit.cover)),
        ),
        Text("${pizzaName}",
            style: GoogleFonts.poppins(color: Colors.blue.shade700,fontWeight: FontWeight.bold,letterSpacing: 1),),
      ],
    );
  }
}
