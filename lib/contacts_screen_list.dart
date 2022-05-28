import 'package:flutter/material.dart';
import 'info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 10),
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                width: 350, //MediaQuery.of(context).size.width,
                child: Text(
                  "Chats",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 15,
                width: MediaQuery.of(context).size.width,
                //color: Colors.white,
              ),
              Container(
                height: 30,
                width: 350, //MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  border: Border.all(color: Colors.grey, width: 1),
                  //color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Text("Buscar"),
                  ],
                ),
              ),
              Container(
                height: 15,
                width: MediaQuery.of(context).size.width,
                //color: Colors.white,
              ),
              Container(
                height: 40,
                width: 350,
                child: Row(children: [
                  Text(
                    "Listas de difusion",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                  SizedBox(width: 140),
                  Text(
                    "Nuevo Grupo",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                ]),
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
                      subtitle: Text(
                        info[index]['message'].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                      trailing: Text(info[index]['hora'].toString()),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          info[index]['profilePic'].toString(),
                        ),
                      ));
                },
              )
            ],
          )),
    );
  }
}
