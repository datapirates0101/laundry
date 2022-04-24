import 'package:flutter/material.dart';
import 'package:laundry/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sfpro',
                    ),
                  ),
                  const Text(
                    'Please Log In To Your Account',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  LoginButton(onTap: () {}, text: 'Login'),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'or',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  LoginButton(onTap: () {}, text: 'Login With OTP'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
