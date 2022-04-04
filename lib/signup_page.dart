import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green.shade200,
                Colors.green.shade700,
                Colors.green.shade900,
              ]),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [topSection, inputSection, const ButtonWidget()],
        ),
      ),
    );
  }
}

Widget topSection = Container(
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Déjà un compte ?',
        style: GoogleFonts.comfortaa(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      const BackButton(),
    ],
  ),
);

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          'Connectez-vous',
          style: GoogleFonts.comfortaa(
            color: Colors.lightGreenAccent.shade700,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        });
  }
}

Widget inputSection = Container(
  // color: Colors.grey,
  // padding: const EdgeInsets.all(20),
  margin: const EdgeInsets.all(30),
  child: Column(
    children: [
      Container(
        height: 60,
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1, color: Colors.white30),
              ),
              child: Icon(
                Icons.people_outline,
                size: 30,
                color: Colors.lightGreenAccent.shade400,
              ),
            ),
            SizedBox(
              // color: Colors.grey,
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Pseudo',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        height: 60,
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1, color: Colors.white30),
              ),
              child: Icon(
                Icons.date_range,
                size: 30,
                color: Colors.lightGreenAccent.shade400,
              ),
            ),
            SizedBox(
              // color: Colors.grey,
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Data de naissance',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        height: 60,
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1, color: Colors.white30),
              ),
              child: Icon(
                Icons.mail_outline,
                size: 30,
                color: Colors.lightGreenAccent.shade400,
              ),
            ),
            SizedBox(
              // color: Colors.grey,
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Adresse email',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        height: 60,
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1, color: Colors.white30),
              ),
              child: Icon(
                Icons.lock_outline,
                size: 30,
                color: Colors.lightGreenAccent.shade400,
              ),
            ),
            SizedBox(
              // color: Colors.grey,
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        padding: const EdgeInsets.fromLTRB(125, 15, 125, 15),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: Text(
        's\'inscrire'.toUpperCase(),
        style: TextStyle(
          color: Colors.lightGreenAccent.shade700,
          fontSize: 20,
        ),
      ),
      onPressed: null,
    );
  }
}
