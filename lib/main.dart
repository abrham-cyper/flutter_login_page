import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.9), // Gradient start color
                  Colors.white.withOpacity(0.1), // Gradient end color
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 30,
            child: Image.asset(
              'assets/images/background.jpg', // Replace with your image path
              width: 200,
              height: 250,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 80),
                const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        // offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        // color: Color.fromARGB(128, 0, 0, 0),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 30),
                const Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 30.0,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(128, 0, 0, 0),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: const TextStyle(color: Colors.lightBlue),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    prefixIcon: const Icon(Icons.person_outline,
                        color: Colors.lightBlue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                  ),
                  style: const TextStyle(color: Colors.lightBlue),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.lightBlue),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    prefixIcon:
                        const Icon(Icons.lock_outline, color: Colors.lightBlue),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.lightBlue,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                  ),
                  obscureText: _isObscure,
                  style: const TextStyle(color: Colors.lightBlue),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Handle forgot password
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.lightBlue, shadows: [
                        Shadow(
                          // offset: Offset(1.0, 1.0),
                          blurRadius: 2.0,
                          color: Color.fromARGB(128, 0, 0, 0),
                        ),
                      ]),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: ElevatedButton(
                    key: ValueKey(_isObscure),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      iconColor: Colors.lightBlue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                      shadowColor: Colors.black,
                    ),
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Or",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 16.0,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                        color: Color.fromARGB(128, 0, 0, 0),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle Google login
                  },
                  icon: Image.asset(
                    'assets/images/google.png', // Replace with your Google icon path
                    height: 20,
                  ),
                  label: const Text('Login with Google'),
                  style: ElevatedButton.styleFrom(
                    iconColor: Colors.white,
                    disabledIconColor: Colors.lightBlue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                    shadowColor: Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle email login
                  },
                  icon: Image.asset(
                    'assets/images/google.png', // Replace with your Email icon path
                    height: 20,
                  ),
                  label: const Text('Login with Git'),
                  style: ElevatedButton.styleFrom(
                    iconColor: Colors.white,
                    disabledBackgroundColor: Colors.lightBlue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                    shadowColor: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Signup",
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
