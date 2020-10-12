import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Membro extends StatefulWidget {
  @override
  _MembroState createState() => _MembroState();
}

class _MembroState extends State<Membro> {
  Map data;

  Color backgroundButtonCollor = Colors.cyanAccent[400];

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Clipboard.setData(ClipboardData(text: data['desc']));
            setState(() {
              backgroundButtonCollor = Colors.green;
            });
          },
          child: Icon(
            Icons.content_copy,
          ),
          backgroundColor: Colors.transparent,
          hoverColor: Colors.cyan,
          foregroundColor: backgroundButtonCollor,
          splashColor: Colors.blue,
          tooltip: 'Copiar texto',
        ),
        appBar: AppBar(
            leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        )),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Image.asset(
                  data['imagePath'],
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                color: Colors.cyanAccent,
                indent: 12,
                endIndent: 12,
                thickness: 3,
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  data['desc'],
                  style: TextStyle(
                      fontSize: 25, color: Colors.cyan, fontFamily: 'Secular'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
