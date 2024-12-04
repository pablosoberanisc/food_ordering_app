import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 70.0, left: 50.0, right: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu, 
                size: 40.0,
              ),
              Icon(
                Icons.search, 
                size: 35.0,
              ),
            ],
          ),
          SizedBox(height: 20.0,),
        Row(
          children: [
            Text("Work Place", style: TextStyle(color: Colors.black, fontFamily: "PoppinsMedium", fontSize: 24.0),),
            Icon(Icons.arrow_drop_down, size: 50.0,)
          ],
        ),
          Text("Chosse your delicious meal", style: TextStyle(color: Colors.black, fontFamily: "PoppinsMedium", fontSize: 17.0),),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(color:Color(0xff66D678),),borderRadius: BorderRadius.circular(7)),
              child:Icon(
                Icons.home, 
                color: Color(0xff08F82E), size: 40.0,
                ),
                ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(color:Color(0xffC5C5C5),width: 2.0),borderRadius: BorderRadius.circular(7)),
              child:Icon(
                Icons.favorite, 
                color: Color(0xffCEC7C7), size: 40.0,
                ),
                ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(color:Color(0xffC5C5C5),width: 2.0),borderRadius: BorderRadius.circular(7)),
              child:Icon(
                Icons.filter_list, 
                color: Color(0xffCEC7C7), size: 40.0,
                ),
                ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(color:Color(0xffC5C5C5),width: 2.0),borderRadius: BorderRadius.circular(7)),
              child:Icon(
                Icons.shopping_cart,
                color: Color(0xffCEC7C7), size: 40.0,
                ),
                ),
          ],
          ),
          SizedBox(height: 30.0,),
          Row(
            children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all(color: Color(0xffC5C5C5)), borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width/2.6,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end, //pone el icono del corazon al lado izquierdo dentro del Row
                    children: [
                      Icon(
                        Icons.favorite, 
                        color: Color(0xffFB0000), size: 35.0,
                        ),
                    ],
                  ),

                  SizedBox(height: 20.0,),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: Image.asset("images/pizza.jpg", height: 150, width: 150, fit: BoxFit.cover,)),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                  "Pizza", 
                  style: TextStyle(
                    color: Colors.black, 
                    fontFamily: "Poppins", 
                    fontSize: 20.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, //separa el el precio y el icono de add mandandolo hacia los lados
                      children: [
                      Text(
                  "\$20", 
                  style: TextStyle(
                    color: Color(0xff66D678), 
                    fontFamily: "Poppins", 
                    fontSize: 20.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Color(0xff66D678), borderRadius: BorderRadius.circular(30)
                        ),
                      child: Icon(Icons.add, color: Colors.white,))
                    ],
                    ),

                ],
              ),
            )
          ],),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 40.0),
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
            height: 60,
            width: MediaQuery.of(context). size.width,
                    decoration: BoxDecoration(color: Color(0xff66D678), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(40))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(
                  "2 items", 
                  style: TextStyle(
                    color: Colors.white, 
                    fontFamily: "Poppins", 
                    fontSize: 20.0),
                    ),
                    Text(
                  "\$30", 
                  style: TextStyle(
                    color: Colors.white, 
                    fontFamily: "Poppins", 
                    fontSize: 20.0),
                    ),
                    
                  ],),  )
      ],
      ),
      ),
    );
  }
}