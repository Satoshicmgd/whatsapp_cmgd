import 'package:flutter/material.dart';
import 'contacts_screen_list.dart';
import 'estados_screen_list.dart';
import 'llamadas_screen_list.dart';
import 'status_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationScreen> {
  // controla el indice seleccinado para mostrar la vista correspondiente
  int _indiceSeleccionado = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // Lista de widgets que se van a mostrar
  static const List<Widget> _opciones = <Widget>[
    EstadosList(),
    LlamadasList(),
    StatusScreen(),
    ContactsList(),
    Text(
      'Página 5',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _indiceSeleccionado = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _opciones.elementAt(_indiceSeleccionado),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/circunferencia.png"),
            ),
            label: 'Estados',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/llamada.png"),
            ),
            label: 'Llamadas',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/camara.png"),
            ),
            label: 'Camara',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/conversacion.png"),
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/configuracion.png"),
            ),
            label: 'Configuracion',
          ),
        ],
        currentIndex: _indiceSeleccionado,
        selectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
