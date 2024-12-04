import 'package:flutter/material.dart'; // Importa las herramientas necesarias de Flutter para construir la interfaz.

class Onboarding extends StatefulWidget {
  const Onboarding({super.key}); // Define un widget con estado para la pantalla de introducción.

  @override
  State<Onboarding> createState() => _OnboardingState(); // Crea un estado asociado al widget.
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Define la estructura principal de la pantalla.
      backgroundColor: Color(0xff66D67866D678), // Establece el color de fondo de la pantalla.
      body: Container( // Contenedor principal que organiza el contenido.
        child: Column( // Organiza los widgets en una columna centrada.
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente los widgets dentro del contenedor.
          children: [
            Image.asset( // Muestra una imagen ajustada al tamaño relativo de la pantalla.
              "images/portada.png", 
              height: MediaQuery.of(context).size.width / 1, // Ajusta la altura en proporción al ancho de la pantalla.
              width: MediaQuery.of(context).size.width / 2, // Ajusta el ancho en proporción a la pantalla.
            ),
            Text( // Título principal del onboarding.
              "Food Ordering App",
              style: TextStyle(
                color: Colors.white,  // Texto blanco para contrastar con el fondo.
                fontSize: 30.0, 
                fontFamily: 'Poppins', // Fuente personalizada.
              ),
            ),
            SizedBox(height: 120.0,), // Espaciador entre el título y el botón.
            Container( // Botón decorado con bordes redondeados.
              margin: EdgeInsets.only(left: 20.0, right: 20.0), // Márgenes laterales.
              height: 50, // Altura del botón.
              width: MediaQuery.of(context).size.width, // Ancho completo del contenedor.
              decoration: BoxDecoration(
                color: Color(0xffFFE600), // Fondo amarillo del botón.
                borderRadius: BorderRadius.circular(30), // Bordes redondeados.
              ),
              child: Center( // Centra el texto dentro del botón.
                child: Text(
                  "Get A Meal", // Texto del botón.
                  style: TextStyle(
                    color: Colors.black, // Texto negro para contraste con el fondo.
                    fontSize: 20.0, 
                    fontWeight: FontWeight.w500, // Peso de fuente medio.
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
