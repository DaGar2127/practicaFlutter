import 'package:flutter/material.dart';
import 'package:dannygarciaapp/home.dart';
import 'package:flutter/cupertino.dart';

// ignore: use_key_in_widget_constructors
class Login extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String correo = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blueGrey.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Image.asset(
                'assets/images/login.png',
                height: 250.0,
              ),
            ),
            Column(
              children: [
                Text(
                  'Login',
                  style: _textoPrincipal(),
                ),
                Text('Danny Garcia', style: _textoSecundario()),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: TextField(
                    onChanged: (value) => correo = value,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      icon: Icon(
                        CupertinoIcons.mail,
                      ),
                      hintText: 'Login email usuario@correo.com',
                      labelText: 'Correo',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: TextField(
                    onChanged: (value) => password = value,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: const InputDecoration(
                      icon: Icon(
                        CupertinoIcons.lock_shield,
                      ),
                      hintText: 'Login Password',
                      labelText: 'Contraseña',
                      iconColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            MaterialButton(
              elevation: 10.0,
              minWidth: 300.0,
              height: 50.0,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: const Text('Verificar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              onPressed: () {
                if (correo == 'danny@gmail.com' && password == 'dannygarcia') {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const Home();
                  }));
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.blueGrey.shade300,
                        title: const Text('Datos incorrectos'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Text('Ingrese nuevamente'),
                            ],
                          ),
                        ),
                        actions: [
                          MaterialButton(
                              child: const Text('Aceptar'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              })
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  _textoPrincipal() {
    return const TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  _textoSecundario() {
    return const TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white);
  }
}
