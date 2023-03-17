import 'dart:io';

import 'package:flutter/material.dart';

enum animal {Gato, Perro}

class Adoptar extends StatefulWidget {
  const Adoptar({Key? key}) : super(key: key);

  @override
  State<Adoptar> createState() => _AdoptarState();
}

class _AdoptarState extends State<Adoptar> {
  List tipo = ["Felix","Figaro","Rocky","Romeo","Tiger","Tom","Boo","Ash","Milo","Max"];
  final nombre = TextEditingController();
  final altura = TextEditingController();
  String t = "";
  animal _status = animal.Gato;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          SizedBox(height: 50,),
          Text("Adoptame", style: TextStyle(color: Colors.red, fontSize: 30 ,fontWeight: FontWeight.bold),),

          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.all(20),
              child: TextField(controller: nombre,
                decoration:
                InputDecoration(labelText: "Nombre de la persona que va a adoptar",
                    border: UnderlineInputBorder(), icon: Icon(Icons.person, color: Colors.redAccent)),
              )
          ),

          Padding(padding: EdgeInsets.all(8)),
          Row( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("¿Qué tipo de mascota vas a adoptar?", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),),
            ],
          ),

          //Radio button
          Padding(padding: EdgeInsets.all(8)),
          Row( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: animal.Gato,
                groupValue: _status,
                onChanged: (animal? valor){
                  setState(() {
                    _status = valor!;
                    tipo = ["Felix","Figaro","Rocky","Romeo","Tiger","Tom","Boo","Ash","Milo","Max"];
                  });
                },
              ),
              Text("Gato"),
              SizedBox(width: 50),

              Radio(
                value: animal.Perro,
                groupValue: _status,
                onChanged: (animal? valor){
                  setState(() {
                    _status = valor!;
                    tipo = ["Snoopy", "Toto", "Blue", "Frank", "Bob", "Hachiko", "Clifford", "Bolt", "Canela", "Lola"];
                  });
                },
              ),
              Text("Perro"),
            ],
          ),

          //Combobox
          SizedBox(height: 2),
          Padding(padding: EdgeInsets.all(20), child:
          DropdownButtonFormField(
            items: tipo.map((name){
                return DropdownMenuItem(child: Text(name), value: name,);
            }).toList(),
            onChanged:(value){
              setState(() {
                t=value.toString();
              });
              },

            icon: const Icon(Icons.arrow_drop_down_circle, color: Colors.red,),
            decoration:
            InputDecoration(labelText: "¿A quién quieres adoptar?", prefixIcon: Icon(Icons.search, color: Colors.redAccent),
                border: OutlineInputBorder()
            ),
          )
          ),

          SizedBox(height: 30),
          SizedBox(height: 30, width: 150, child: ElevatedButton(onPressed: (){
            mensaje(nombre.text, t, _status);
          }, child: Text("ADOPTAR!!", style: TextStyle(fontSize: 25, color: Colors.white), textAlign: TextAlign.center,),
          )
          ),

        ],
      ),
    );
  }

  mensaje(String nombre, String t, animal status) {

    if(nombre=="") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("No has ingresado el nombre de la persona que quiere adoptar")),
      );
      exitCode;
    } else if(t==""){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("No has ingresado a la mascota que quieres adoptar")),
      );
      exitCode;
    }
    String a = "";
    if(status.toString() == "animal.Perro"){a = "perrito/perrita";}
    else if(status.toString() == "animal.Gato"){a = "gatito/gatita";}

    showDialog(context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Adopción exitosa"),
            content: Text("Felicidades ${nombre} acabas de adoptar al ${a} ${t} \n \n MUCHAS GRACIAS"),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop(); //QUITA el alertDialog
              }, child: Text("OK"))
            ],
          ); //AlertDialog
        } ); //showDialog
  }
  }
