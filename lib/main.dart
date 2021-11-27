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
        Imagenote: 'images/KeyG/Key_G.png',
        key: ' ',
        showimages: 'images/KeyG/Key_G.png'),
    const NoteItem(
        Imagenote: 'images/KeyG/G_3.jpg',
        key: 'G3',
        showimages: 'images/KeyG/G_3.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/A_3.jpg',
        key: ' ',
        showimages: 'images/KeyG/A_3.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/B_3.jpg',
        key: ' ',
        showimages: 'images/KeyG/B_3.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/C_4.jpg',
        key: 'C4',
        showimages: 'images/KeyG/C_4.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/D_4.jpg',
        key: ' ',
        showimages: 'images/KeyG/D_4.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/E_4.jpg',
        key: ' ',
        showimages: 'images/KeyG/E_4.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/F_4.jpg',
        key: ' ',
        showimages: 'images/KeyG/F_4.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/G_4.jpg',
        key: ' ',
        showimages: 'images/KeyG/G_4.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/A_4.jpg',
        key: ' ',
        showimages: 'images/KeyG/A_4.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/B_4.jpg',
        key: ' ',
        showimages: 'images/KeyG/B_4.jpg'),
    const NoteItem(
        Imagenote: 'images/KeyG/C_5.jpg',
        key: 'C5',
        showimages: 'images/KeyG/C_5.jpg'),
        const NoteItem(
        Imagenote: 'images/KeyG/D_5.jpg',
        key: ' ',
        showimages: 'images/KeyG/D_5.jpg'),
        const NoteItem(
        Imagenote: 'images/KeyG/E_5.jpg',
        key: ' ',
        showimages: 'images/KeyG/E_5.jpg'),
        const NoteItem(
        Imagenote: 'images/KeyG/F_5.jpg',
        key: ' ',
        showimages: 'images/KeyG/F_5.jpg'),
        const NoteItem(
        Imagenote: 'images/KeyG/G_5.jpg',
        key: ' ',
        showimages: 'images/KeyG/G_5.jpg'),
        const NoteItem(
        Imagenote: 'images/KeyG/A_5.jpg',
        key: ' ',
        showimages: 'images/KeyG/A_5.jpg'),
        const NoteItem(
        Imagenote: 'images/KeyG/B_5.jpg',
        key: ' ',
        showimages: 'images/KeyG/B_5.jpg'),
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
                    itemCount: 18,
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
    
