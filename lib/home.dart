import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  bool _hovering = false;
  double _top = 0;
  double _left = 0;

  bool _pressed = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/GettyImages-174655938-0dee21af9296498986e417a7639f335d.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              'Will you be my Valentines?',
              textAlign: TextAlign.center,
              style: GoogleFonts.fredoka(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  color: Colors.white),
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/jerry.gif'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );

                    // Schedule the second dialog
                    Future.delayed(const Duration(seconds: 1), () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Center(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.close),
                                    ),
                                  ),
                                  const Text(
                                    'Yehey!',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'I love you Bhe',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Image.asset(
                                    'assets/images/giphy-unscreen.gif',
                                    width: 200,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    });
  
              
                  },
                  child: Text('Yes',
                      style: GoogleFonts.fredoka(color: Colors.white)),
                ),
               
                SizedBox(
                  width: 20,
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                //   onPressed: (){

                //   }, child: Text('No',style: GoogleFonts.fredoka(color: Colors.white),),),
                Container(
                  margin: EdgeInsets.only(top: _top),
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      setState(() {
                        _top -= -50;
                      });
                    },
                    child: Text('No',
                        style: GoogleFonts.fredoka(color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
