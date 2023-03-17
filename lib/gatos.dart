import 'package:flutter/material.dart';

class Gatos extends StatefulWidget {
  const Gatos({Key? key}) : super(key: key);

  @override
  State<Gatos> createState() => _GatosState();
}

class _GatosState extends State<Gatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Padding(padding: EdgeInsets.all(20)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: SizedBox(width: 200, height: 200 , child:
                        Image.asset("Gatos/logo_gato.png")),
                      ),
                      Container(
                        child: Text("Gatos rescatados", style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red)),
                      ),
                    ]
                ),

                rows("Felix", "Gatos/Felix.png", "Hembra", "Adulto", "04/2011",
                "Común europeo", "Independiente"),

                rows("Figaro", "Gatos/Figaro.png", "Hembra", "Adulto", "06/2009",
                "Común europeo", "Independiente"),

                rows("Rocky", "Gatos/Rocky.png","Hembra", "Adulto", "01/2022",
                    "Común europeo", "Cariñosa"),

                rows("Romeo", "Gatos/Romeo.png","Hembra", "Adulto", "03/2010",
                    "Común europeo", "Tímida"),

                rows("Tiger", "Gatos/Tiger.png", "Macho", "Adulto", "01/2018",
                    "Común europeo", "Muy sociable"),

                rows("Tom", "Gatos/Tom.png","Macho", "Adulto", "04/2014",
                    "Común europeo", "Tranquilo"),

                rows("Boo", "Gatos/Boo.png","Hembra", "Adulto", "03/2015",
                    "Común europeo", "Cariñosa"),

                rows("Ash", "Gatos/Ash.png","Macho", "Cachorro", "08/2022",
                    "Común europeo", "Juguetón"),

                rows("Milo", "Gatos/Milo.png","Hembra", "Adulto", "03/2019",
                    "Común europeo", "Cariñosa"),

                rows("Max", "Gatos/Max.png","Macho", "Adulto", "03/2017",
                    "Común europeo", "Cariñoso"),

              ], //children Column
            ),
          ] //children ListView
      )

    );
  }

  Widget rows(String nombre, String ruta,
      String sexo, String edad, String nacimiento, String raza, String caracter) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(nombre, style:
          TextStyle(fontSize: 30, color: Colors.redAccent, fontWeight: FontWeight.bold)
          ),
        ),
        Container(
          child: SizedBox(width: 200, height: 200 , child:
          Image.asset(ruta)),
        ),
        Container(
            child: SizedBox(width: 125, height: 50, child:
            ElevatedButton(onPressed: (){
              showDialog(context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Información de ${nombre}"),
                      content: Text("Nombre de la mascota: ${nombre} \n\n"
                          "Sexo: ${sexo} \n\n"
                          "Edad: ${edad} \n\n"
                          "Nacimiento: ${nacimiento} \n\n"
                          "Raza: ${raza} \n\n"
                          "Caracter: ${caracter}"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pop(); //QUITA el alertDialog
                        }, child: Text("OK"))
                      ],
                    ); //AlertDialog
                  } );
            }, child: Text("Ver mas..")
            )
            )
        ),
      ],
    );
  }
}
