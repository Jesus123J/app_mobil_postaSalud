import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              AppBar(
                title: Stack(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                          child: MaterialButton(
                            onPressed: () {
                              showMenu(
                                context:
                                    context, // Asegúrate de tener acceso al BuildContext
                                position: const RelativeRect.fromLTRB(
                                  0,
                                  65,
                                  0,
                                  50,
                                ),
                                items: [
                                  const PopupMenuItem(
                                    value: 1,
                                    child: Text('data'),
                                  ),
                                ],
                              ).then((value) {
                                return value != null
                                    ? null
                                    : 'opcion seleccionada: $value';
                              });
                            },
                            child: const Icon(Icons.menu, size: 20),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          child: const Text(
                            'BIENVENIDO',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: MaterialButton(
                  color: Colors.amber,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text('Reservar cita'),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 0,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                  color: Colors.pink,
                  child: const Text(
                    'Regresar a Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
