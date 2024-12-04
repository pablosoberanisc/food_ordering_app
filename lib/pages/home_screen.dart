import 'package:flutter/material.dart'; // Importa las herramientas necesarias de Flutter para construir la interfaz.

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key}); // Define un widget con estado que será la pantalla principal.

  @override
  State<HomeScreen> createState() => _HomeScreenState(); // Crea un estado asociado a este widget.
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Construye la estructura principal de la pantalla.
      body: Container( // Contenedor principal con márgenes.
        margin: EdgeInsets.only(top: 70.0, left: 50.0, right: 50),
        child: Column( // Organiza los widgets en columna.
          crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos al inicio en la horizontal.
          children: [
            Row( // Primera fila con iconos.
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribuye los iconos a los extremos.
              children: [
                Icon( // Icono de menú.
                  Icons.menu, 
                  size: 40.0,
                ),
                Icon( // Icono de búsqueda.
                  Icons.search, 
                  size: 35.0,
                ),
              ],
            ),
            SizedBox(height: 20.0,), // Espaciador entre filas.
            Row( // Fila con texto y un icono desplegable.
              children: [
                Text(
                  "Work Place", 
                  style: TextStyle(color: Colors.black, fontFamily: "PoppinsMedium", fontSize: 24.0),
                ),
                Icon(Icons.arrow_drop_down, size: 50.0,) // Icono de desplegable.
              ],
            ),
            Text( // Texto descriptivo debajo del título.
              "Chosse your delicious meal", 
              style: TextStyle(color: Colors.black, fontFamily: "PoppinsMedium", fontSize: 17.0),
            ),
            SizedBox(height: 20.0,), // Espaciador antes de la siguiente fila.
            Row( // Fila de botones con iconos dentro de contenedores decorados.
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Espaciado uniforme entre botones.
              children: [
                Container( // Botón de inicio.
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xff66D678)), borderRadius: BorderRadius.circular(7)),
                  child: Icon(
                    Icons.home, 
                    color: Color(0xff08F82E), size: 40.0,
                  ),
                ),
                Container( // Botón de favoritos.
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffC5C5C5), width: 2.0), borderRadius: BorderRadius.circular(7)),
                  child: Icon(
                    Icons.favorite, 
                    color: Color(0xffCEC7C7), size: 40.0,
                  ),
                ),
                Container( // Botón de filtros.
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffC5C5C5), width: 2.0), borderRadius: BorderRadius.circular(7)),
                  child: Icon(
                    Icons.filter_list, 
                    color: Color(0xffCEC7C7), size: 40.0,
                  ),
                ),
                Container( // Botón del carrito.
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffC5C5C5), width: 2.0), borderRadius: BorderRadius.circular(7)),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Color(0xffCEC7C7), size: 40.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0,), // Espaciador antes del siguiente grupo.
            Row( // Fila con tarjeta de producto (pizza).
              children: [
                Container( // Tarjeta con bordes y contenido organizado en columna.
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffC5C5C5)), borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width / 2.6, // Ancho relativo a la pantalla.
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.start, // Alinea elementos al inicio de la columna.
                    children: [
                      Row( // Fila con icono de favorito alineado a la derecha.
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.favorite, 
                            color: Color(0xffFB0000), size: 35.0,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,), // Espaciador antes de la imagen.
                      Center( // Centra la imagen.
                        child: ClipRRect( // Recorta la imagen con bordes redondeados.
                          borderRadius: BorderRadius.circular(150),
                          child: Image.asset(
                            "images/pizza.jpg", 
                            height: 150, width: 150, fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0,), // Espaciador antes del texto.
                      Text( // Nombre del producto.
                        "Pizza", 
                        style: TextStyle(color: Colors.black, fontFamily: "Poppins", fontSize: 20.0),
                      ),
                      Row( // Fila con precio y botón de agregar.
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Elementos en extremos.
                        children: [
                          Text( // Precio del producto.
                            "\$20", 
                            style: TextStyle(color: Color(0xff66D678), fontFamily: "Poppins", fontSize: 20.0),
                          ),
                          Container( // Botón de agregar.
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(color: Color(0xff66D678), borderRadius: BorderRadius.circular(30)),
                            child: Icon(Icons.add, color: Colors.white,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(), // Ocupa el espacio restante antes del contenedor inferior.
            Container( // Contenedor inferior con detalles del carrito.
              margin: EdgeInsets.only(bottom: 40.0),
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              height: 60,
              width: MediaQuery.of(context).size.width, // Ancho de la pantalla.
              decoration: BoxDecoration(
                color: Color(0xff66D678), 
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30), 
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Row( // Fila con información del carrito.
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Elementos en extremos.
                children: [
                  Text( // Cantidad de ítems.
                    "2 items", 
                    style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontSize: 20.0),
                  ),
                  Text( // Precio total.
                    "\$30", 
                    style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
