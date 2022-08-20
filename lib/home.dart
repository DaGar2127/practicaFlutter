import 'package:dannygarciaapp/login.dart';
import 'package:flutter/material.dart';
import 'package:dannygarciaapp/palabras_app.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Menú',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.blueGrey.shade300,
        ),
        backgroundColor: Colors.blueGrey.shade200,
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: MaterialButton(
                padding: const EdgeInsets.all(10),
                color: Colors.green.shade200,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.black54)),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                      child: Image.asset(
                        'assets/images/principal.png',
                        height: 30,
                      ),
                    ),
                    const Text(
                      'Iniciar Generador',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const ParPalabras();
                  }));
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: MaterialButton(
                padding: const EdgeInsets.all(10),
                color: Colors.red.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.black54)),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                      child: Image.asset(
                        'assets/images/home.jpg',
                        height: 30,
                      ),
                    ),
                    const Text(
                      'Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: MaterialButton(
                padding: const EdgeInsets.all(10),
                color: Colors.blue.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.black54)),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                      child: Image.asset(
                        'assets/images/about.png',
                        height: 30,
                      ),
                    ),
                    const Text(
                      'Acerca de',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('UCP 2022'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Text('Danny Garcia'),
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
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: MaterialButton(
                padding: const EdgeInsets.all(10),
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.black54)),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                      child: Image.asset(
                        'assets/images/logout.png',
                        height: 30,
                      ),
                    ),
                    const Text(
                      'Cerrar Sesión',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.blueGrey.shade300,
                        title: const Text('Saliendo de la aplicación'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Text('Sesión Cerrada'),
                            ],
                          ),
                        ),
                        actions: [
                          MaterialButton(
                              child: const Text('Aceptar'),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Login();
                                }));
                              })
                        ],
                      );
                    },
                  );
                },
              ),
            )
          ],
        ));
  }
}
