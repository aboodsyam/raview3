import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lancer1 extends StatefulWidget {
  const Lancer1({super.key});

  @override
  State<Lancer1> createState() => _Lancer1State();
}

class _Lancer1State extends State<Lancer1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
          () {
        Navigator.popAndPushNamed(context, '/Lancer2');
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
        child: Text('!Wlaciem..',
            style: GoogleFonts.nunito(
              fontSize: 22,
              fontWeight: FontWeight.w900
            ),),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffEDB7ED),
              Color(0xff82A0D8),
              Color(0xff8DDFCB),
              Color(0xffECEE81),
            ],
          ),
        ),
      ),
    );
  }
}
