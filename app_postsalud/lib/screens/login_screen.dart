import 'package:flutter/material.dart';
import 'package:app_postsalud/widgets/input_decoration.dart'; // importM
// import 'package:email_validator/email_validator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //Contiene a todos los widgets
      body: SizedBox(
        height: double.infinity, //Ocupa toda la altura
        width: double.infinity, //Ocupa todo el ancho
        child: Stack(
          //Conjunto de widgets, Uno encima de otro
          children: [
            headerlogin(size), //Encabezado del login
            iconopersona(), //Icono
            loginForm(context), //Form de login
          ],
        ),
      ),
    );
  }

  SingleChildScrollView loginForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 180),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            // height: 250,
            margin: const EdgeInsets.symmetric(horizontal: 35),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                const BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  // offset: Offset(0, 2)
                ),
              ],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      textFormFieldEmail(),
                      const SizedBox(height: 25),
                      textFormFieldPassword(),
                      const SizedBox(height: 20),
                      buttonIngresar(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'Crear una nueva cuenta',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
        ],
      ),
    );
  }

  TextFormField textFormFieldEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      //Habilita el arroba en el teclado
      validator: (value) {
        //AGREGAR VALIDADOR DE DNI
        return (value != null && value.length > 8) ? null : 'Dni invalido';
      },
      autocorrect: false,
      decoration: InputDecorations.inputDecoration(
        hintText: 'Ejemplo:12345',
        labelText: 'DNI',
        icono: const Icon(Icons.badge_outlined),
      ),
    );
  }

  TextFormField textFormFieldPassword() {
    return TextFormField(
      validator: (value) {
        //Validacion de contra
        return (value != null && value.length >= 6)
            ? null
            : 'La contraseña debe ser mas de 5 caracteres';
      },
      autocorrect: false,
      decoration: InputDecorations.inputDecoration(
        hintText: '******',
        labelText: 'Contraseña',
        icono: const Icon(Icons.lock_open),
      ),
    );
  }

  MaterialButton buttonIngresar(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      disabledColor: Colors.amber,
      onPressed: () {
        Navigator.pushReplacementNamed(context, 'home');
      },
      color: Colors.blueAccent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: const Text(
          'Ingresar',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }

  SafeArea iconopersona() {
    return SafeArea(
      // Asegura que el contenido esté dentro de las zonas seguras
      child: Container(
        // Icono de login
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: const Icon(Icons.person_pin, color: Colors.white, size: 110),
      ),
    );
  }

  Container headerlogin(Size size) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(24, 155, 255, 1.2),
            Color.fromRGBO(132, 200, 255, 1.1),
          ],
        ),
      ),
      width: double.infinity,
      height: size.height * 0.32,
      child: Stack(
        children: [
          Positioned(top: -30, left: -50, child: burbuja()),
          Positioned(top: -50, right: 80, child: burbuja()),
          Positioned(top: 90, left: 50, child: burbuja()),
          Positioned(top: 220, left: 10, child: burbuja()),
          Positioned(top: 190, right: 130, child: burbuja()),
        ],
      ),
    );
  }

  Container burbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.1),
      ),
    );
  }
}
