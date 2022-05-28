import 'package:flutter/material.dart';
import 'info.dart';

class LlamadasList extends StatelessWidget {
  const LlamadasList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10),
        physics: ScrollPhysics(),
        child: Column(children: <Widget>[
          Container(
            height: 40,
            width: 350, //MediaQuery.of(context).size.width,
            child: Text(
              "Llamadas",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            //color: Colors.white,
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
                    subtitle: Row(children: <Widget>[
                      Image.asset(
                        info[index]['image'].toString(),
                        width: 20,
                      ),
                      Text(info[index]['estado'].toString())
                    ]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(info[index]['hora'].toString()),
                        Image.asset(
                          info[index]['imagen'].toString(),
                          width: 20,
                        ),
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                    ));
              })
        ]),
      ),
    );
  }
}
