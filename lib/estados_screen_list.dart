import 'package:flutter/material.dart';
import 'info.dart';
import 'status_screen.dart';

class EstadosList extends StatelessWidget {
  const EstadosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text("Estados", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),*/
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
              width: 350, //MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Text(
                    "Privacidad",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Estados",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            StatusScreen(),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
              child: Text("RECIENTES"),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                    subtitle: //Padding(
                        //padding: const EdgeInsets.only(top: 6),
                        Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                    //),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                    ));
              },
            ),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
              child: Text("VISTOS"),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                    subtitle: //Padding(
                        //padding: const EdgeInsets.only(top: 6),
                        Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                    //),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                    ));
              },
            ),
          ],
        ),
      ), /*)*/
    );
  }
}
