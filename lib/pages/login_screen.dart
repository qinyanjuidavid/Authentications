import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validator: (){},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        fillColor: Color.fromARGB(255, 245, 170, 51),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 245, 170, 51), width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ),
        labelText: "Email",
        hintText: "doe@gmail.com",
        prefixIcon: Icon(
          Icons.mail,
          color: Colors.blue,
        ),
      ),
    );
    // password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      //validator: (){},
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        fillColor: Color.fromARGB(255, 245, 170, 51),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 245, 170, 51), width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.blue,
        ),
        labelText: "Password",
        hintText: "Password",
      ),
    );
    final loginButton = Container(
      width: double.infinity,
      child: RawMaterialButton(
        onPressed: () {},
        fillColor: Color.fromARGB(255, 0, 137, 123),
        elevation: 5,
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                    color: Colors.grey[700],
                  ),
                ),

                // SizedBox(width: 2),
                Expanded(
                  child: Container(),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 125,
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_active,
                    size: 25,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
            // ----
            SizedBox(height: 60),
            SizedBox(
              height: 300,
              child: SvgPicture.asset(
                "assets/images/signin.svg",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 24),
            emailField,
            SizedBox(
              height: 26,
            ),
            passwordField,
            SizedBox(
              height: 18,
            ),

            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            loginButton,
          ],
        ),
      ),
    );
  }
}
