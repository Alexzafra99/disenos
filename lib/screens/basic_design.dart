import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          Image(image: AssetImage("assets/landscape.jpg")),
          //Titulo
          Title(),
          //Button section
          ButtonSection(),
          //Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Ad exercitation incididunt tempor minim velit aliquip consequat nostrud. Ex et magna ad enim esse eiusmod duis commodo ipsum duis. Nisi enim elit laborum sunt elit eu tempor duis. Magna est magna reprehenderit tempor proident excepteur esse. Laborum deserunt fugiat excepteur enim ut aute velit dolor."),
          ),
        ],
      )
    );
  }
}

class Title extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Deschinen Lake Campround", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Kandersteg, Switzerland", style: TextStyle(color: Colors.black45),)
            ],
          ),

          Expanded(child: Container()),

          Icon(Icons.star, color: Colors.red,),
          Text("41")
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(icon: Icons.phone, text: "CALL",),
          CustomButton(icon: Icons.map, text: "ROUTE",),
          CustomButton(icon: Icons.share, text: "SHARE",),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30,),
        Text(this.text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}