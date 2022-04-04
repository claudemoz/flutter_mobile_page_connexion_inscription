import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter login Design',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logoIcon,
              titleSection,
              // textSection,
              inputSection,
              const ButtonWidget(),
              bottomSection,
              forgetButton,
            ],
          ),
        ),
      ),
    );
  }
}

Widget logoIcon = Container(
  height: 180,
  width: 180,
  padding: const EdgeInsets.all(20),
  // margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(70),
    color: const Color.fromRGBO(255, 255, 255, 0.1),
  ),
  child: Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(60),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 20,
          blurRadius: 30,
          offset: const Offset(0, 6),
        ),
      ],
    ),
    child: Image.network(
        'https://png.pngtree.com/png-vector/20191030/ourlarge/pngtree-green-leaves-vector-icon-design-on-white-background-various-shapes-of-png-image_1870598.jpg'),
  ),
);

Widget titleSection = Container(
  // padding: const EdgeInsets.all(0),
  margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'TSIANG',
        style: GoogleFonts.exo(
          fontSize: 40,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
      const SizedBox(width: 5),
      Text(
        ' 5.0',
        style: GoogleFonts.exo(
            fontSize: 40,
            color: Colors.lightGreenAccent.shade400,
            fontWeight: FontWeight.w900),
      ),
    ],
  ),
);

// Widget textSection = Container(
//   margin: const EdgeInsets.fromLTRB(0, 5, 0, 50),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Text(
//         'Page de connexion',
//         style: GoogleFonts.comfortaa(
//           fontSize: 16,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ],
//   ),
// );

Widget inputSection = Container(
  // color: Colors.grey,
  // padding: const EdgeInsets.all(20),
  margin: const EdgeInsets.fromLTRB(30, 15, 20, 20),
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
        padding: const EdgeInsets.fromLTRB(120, 15, 120, 15),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: Text(
        'connexion'.toUpperCase(),
        style: TextStyle(
          color: Colors.lightGreenAccent.shade700,
          fontSize: 20,
        ),
      ),
      onPressed: null,
    );
  }
}

Widget bottomSection = Container(
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Pas encore de compte ?',
        style: GoogleFonts.comfortaa(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SignupButton(),
    ],
  ),
);

class SignupButton extends StatelessWidget {
  const SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          'Inscrivez-vous',
          style: GoogleFonts.comfortaa(
            color: Colors.lightGreenAccent.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignupPage()),
          );
        });
  }
}

Widget forgetButton = Container(
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: TextButton(
    child: Text(
      'Mot de passe oubliez ?',
      style: GoogleFonts.comfortaa(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed: null,
  ),
);
