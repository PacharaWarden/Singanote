import 'package:flutter/material.dart';


void main() {
  runApp(const singa());
}

class NoteItem {
  // ignore: non_constant_identifier_names
  final String Imagenote;
  final String key;
  final String showimages;

  const NoteItem(
      {
      // ignore: non_constant_identifier_names
      required this.Imagenote,
      required this.key,
      required this.showimages});
}

// ignore: camel_case_types
class singa extends StatefulWidget {
  const singa({Key? key}) : super(key: key);

  @override
  _singaState createState() => _singaState();
}

// ignore: camel_case_types
class _singaState extends State<singa> {
  List<NoteItem> items = [
    const NoteItem(
        Imagenote: 'images/KeyG/C.jpg',
        key: 'C4',
        showimages: 'images/KeyG/C.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/Cc.jpg',
        key: ' ',
        showimages: 'images/KeyG/Cc.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/D.jpg',
        key: ' ',
        showimages: 'images/KeyG/D.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/Eb.jpg',
        key: ' ',
        showimages: 'images/KeyG/Eb.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/E.jpg',
        key: ' ',
        showimages: 'images/KeyG/E.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/F.jpg',
        key: ' ',
        showimages: 'images/KeyG/F.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/Fc.jpg',
        key: ' ',
        showimages: 'images/KeyG/Fc.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/G.jpg',
        key: ' ',
        showimages: 'images/KeyG/G.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/Gc.jpg',
        key: ' ',
        showimages: 'images/KeyG/Gc.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/A.jpg',
        key: ' ',
        showimages: 'images/KeyG/A.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/Bb.jpg',
        key: ' ',
        showimages: 'images/KeyG/Bb.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/B.jpg',
        key: ' ',
        showimages: 'images/KeyG/B.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
                'l       l      l      l      l     l      l      l      l      l      l'),
            backgroundColor: Colors.brown[900],
          ),
          backgroundColor: Colors.grey[900],
          body: Center(
            child: Column(
              verticalDirection: VerticalDirection.up,
              children: [
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (context, index) =>
                        buildNote(item: items[index]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

Widget buildNote({
  required NoteItem item,
}) =>
    Container(
      width: 125,
      color: Colors.orange,
      child: Column(
        children: [
          Container(height: 4),
          Text(item.key, style: const TextStyle(fontSize: 18)),
          Expanded(
              child: Material(
            child: Ink.image(
              image: AssetImage(item.Imagenote),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  
                  

                  
                
                },
              ),
            ),
          ))
        ],
      ),
    );
    
