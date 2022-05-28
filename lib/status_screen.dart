import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/gato.jpg"),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 10,
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ))),
        ],
      ),
      title: Text(
        "Mi estado",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(
        "Añadir a mi estado",
        style: TextStyle(fontSize: 13, color: Colors.grey[900]),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            image: AssetImage("assets/logocam.png"),
          ),
          SizedBox(width: 10),
          Image(
            image: AssetImage("assets/pencil.png"),
          ),
        ],
      ),
    );
  }
}
