import 'package:flutter/material.dart';

Widget conteudoPages(String imgUrl, String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      children: [
        Image.network(imgUrl),
        Text(
          title,
          style: const TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 15, color: Colors.black54),
          textAlign: TextAlign.justify,
        )
      ],
    ),
  );
}

Widget dados() {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      children: [
        // o primeiro campo texto tem o foco no inicio
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.person),
              hintText: 'Informe o seu nome'),
        ),
        // o segundo campo texto tem o foco quando o usuário
        // clica no botão FloatingActionButton.
        TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.try_sms_star_outlined),
              hintText: 'Informe seu peso'),
        ),
        TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.try_sms_star_outlined),
              hintText: 'Informe a sua altura'),
        ),
        TextButton(
          onPressed: null,
          child: Text("Calcular"),
        )
      ],
    ),
  );
}
