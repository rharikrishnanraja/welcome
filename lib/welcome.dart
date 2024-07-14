import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
void main () {
  runApp(const Welcome());
}
class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.all(40)),
                  SizedBox(
                      width: 400,
                      height: 400,
                      child: Image.asset('images/welcome.png')
                  ),
                  const Padding(padding: EdgeInsets.only(top: 150)),
                  Center(
                    child: SizedBox(
                      width: 350,
                      child: RichText(
                        text:  TextSpan(children: [
                          TextSpan(
                              text: 'Tap “Agree and continue” to accept the ',
                              style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,color: const Color(0xff545454))
                          ),
                          TextSpan(
                              text: 'Terms of Services and  Privacy Policy',
                              style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,color: const Color(0xff174AE4)),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}
                          )
                        ]),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(30)),
                  ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(
          
                        fixedSize: const Size(300, 40),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        shadowColor: const Color(0xffabbbea),
                        elevation: 20,
                        backgroundColor: const Color(0xffabbbea),
                      ),
                      child:  Text('Agree & Continue',
                        style: GoogleFonts.outfit(fontSize: 20,fontWeight: FontWeight.bold, color: const Color(0xff1D2428)),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
