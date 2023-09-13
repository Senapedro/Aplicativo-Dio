import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State <LoginPage> createState() =>  _LoginPageState();
}

class  _LoginPageState extends State <LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const SizedBox(
              height: 80,
            ),
            const Icon(
              Icons.person, 
              size: 150,
              color: Colors.black,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 30,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text("Informe seu E-mail:")
                  ),
                  Expanded(
                    flex: 3,
                    child: Text("Email")
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 30,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text("Informe a Senha:")
                  ),
                  Expanded(
                    flex: 3,
                    child: Text("Senha")
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              color: Colors.green,
              height: 30,
              alignment: Alignment.center,
              child: Text("Login"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 30,
              alignment: Alignment.center,
              child: Text("Cadastro"),
            ),
            const SizedBox(
              height: 20,
            ),
            
          ],
        ),
      ),
      ),
    );
  }
}