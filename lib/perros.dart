import 'package:flutter/material.dart';

class Perros extends StatefulWidget {
  const Perros({Key? key}) : super(key: key);

  @override
  State<Perros> createState() => _PerrosState();
}

class _PerrosState extends State<Perros> {
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
                    Image.asset("Perros/logo_perro.png")),
                  ),
                  Container(
                    child: Text("Perros rescatados", style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red)),
                  ),
                ]
              ),

              rows("Snoopy", "Perros/Snoopy.png"," Criollo", "2 años",
                  "Macho", "Mediano", "Muy inteligente y amable",
                  "Cuadro de salud completo", "Bajo de peso"),

              rows("Toto", "Perros/Toto.png", "Criollo", "3 años", "Macho", "Grande",
              "Activo, cariñoso y sociable", "Esterilizado, desparasitado y con todas sus vacunas al día",
              "Desnutrido y maltratado"),

              rows("Blue", "Perros/Blue.png", "Criolla", "3 años", "Hembra", "Grande",
              "Juguetona, activa, cariñosa y sociable",
              "Esterilizada, desparasitada y con todas sus vacunas al día",
              "Desnutrición leve"),

              rows("Frank", "Perros/Frank.png", "Criollo", "5 años", "Hembra",
              "Mediana", "Tranquila, cariñosa y timida", "Esterelizada y desparasitada",
              "Recién nacida"),

              rows("Bob", "Perros/Bob.png", "Criollo", "5 años", "Macho",
                  "Mediano", "Se lleva bien con todos los perros",
              "Con todas sus vacunas", "Recién nacido"),

              rows("Hachiko", "Perros/Hachiko.png", "Criolla", "7 años",
              "Hembra", "Mediana", "Super cariñosa y sociable",
                  "Esterilizada y con todas sus vacunas","Asustada y nerviosa"),

              rows("Clifford", "Perros/Clifford.png", "French Poodle",
              "6 años", "Hembra", "Chica",
              "Amigable y cariñosa, no se lleva con otros perritos, le gusta ser unica",
              "Bueno. Cuadro completo", "Saludable"),

              rows("Bolt", "Perros/Bolt.png", "Cruza de Poodle",
                  "1 año y 2 meses", "Macho", "Chico / Mediano",
              "Juguetón, amigable, cariñoso. Ideal para familia con niños",
              "Sano, con todas sus vacunas, esterilizado y desparasitado",
              "Desorientado y sucio"),

              rows("Canela", "Perros/Canela.png", "Criolla", "1 año", "Hembra",
              "Mediana", "Muy cariñosa y guardián", "Bueno, com cuadro de vacunación completo",
              "Problema en la piel"),

              rows("Lola", "Perros/Lola.png", "Criolla", "1 año aproximadamente",
              "Hembra", "Mediana", "Energía media, cariñosa y temerosa",
              "Esterilizada y con la vacuna de la rabia", "Desconocido"),

            ], //children Column
          ),
        ] //children ListView
        )

    );
  }

  Widget rows(String nombre, String ruta,
      String raza, String edad, String sexo, String tam, String personalidad, String estadoS, String estadoL) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(nombre, style:
          TextStyle(fontSize: 30, color: Colors.redAccent, fontWeight: FontWeight.bold)
          ),
        ),
        Container(
          child: Image.asset(ruta),
        ),
        Container(
            child: SizedBox(width: 125, height: 50, child:
            ElevatedButton(onPressed: (){
              showDialog(context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Información de ${nombre}"),
                      content: Text("Nombre de la mascota: ${nombre} \n\n"
                          "Raza: ${raza} \n\n"
                          "Edad: ${edad} \n\n"
                          "Sexo: ${sexo} \n\n"
                          "Tamaño: ${tam} \n\n"
                          "Personalidad: ${personalidad} \n\n"
                          "Estado de salud: ${estadoS} \n\n"
                          "Estado en que llegó: ${estadoL}"),
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
