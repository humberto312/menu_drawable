import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Principal(),
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 8.0),
          children: [
            DrawerHeader(
              child: Text('Menú Lateral'),
              decoration: BoxDecoration(color: Colors.greenAccent),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Catalogos'),
            ),
            ListTile(
              leading: Icon(Icons.storage),
              title: Text('Inventario'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Salir'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Opcion3()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}

class Opcion3 extends StatelessWidget {
  const Opcion3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hola opcion 3'),
    );
  }
}
