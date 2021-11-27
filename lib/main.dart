import 'package:flutter/material.dart';

void main() {
  runApp(const Singa());
}

class NoteItem {
  final String imageNote;
  final String key;
  final String showImages;

  const NoteItem({
    required this.imageNote,
    required this.key,
    required this.showImages,
  });
}

class Singa extends StatefulWidget {
  const Singa({Key? key}) : super(key: key);

  @override
  _SingaState createState() => _SingaState();
}

class _SingaState extends State<Singa> {
  NoteItem? _selectedNoteItem; // Allow Null
  List<NoteItem> items = [
    const NoteItem(
      imageNote: 'assets/images/key_g/Key_G.png',
      key: ' ',
      showImages: 'assets/images/key_g/Key_G.png',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/G_3.jpg',
      key: 'G3',
      showImages: 'assets/images/key_g/G_3.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/A_3.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/A_3.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/B_3.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/B_3.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/C_4.jpg',
      key: 'C4',
      showImages: 'assets/images/key_g/C_4.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/D_4.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/D_4.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/E_4.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/E_4.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/F_4.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/F_4.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/G_4.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/G_4.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/A_4.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/A_4.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/B_4.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/B_4.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/C_5.jpg',
      key: 'C5',
      showImages: 'assets/images/key_g/C_5.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/D_5.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/D_5.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/E_5.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/E_5.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/F_5.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/F_5.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/G_5.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/G_5.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/A_5.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/A_5.jpg',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/B_5.jpg',
      key: ' ',
      showImages: 'assets/images/key_g/B_5.jpg',
    ),
  ];

  @override
  void initState() {
    super.initState();
    // getMicrophonePermssion
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
            Text(
              item.key,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Expanded(
              child: Material(
                child: Ink.image(
                  image: AssetImage(item.imageNote),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () async {
                      setState(() {
                        _selectedNoteItem = item;
                      });
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            _selectedNoteItem?.imageNote ?? '',
          ),
          backgroundColor: Colors.brown[900],
        ),
        backgroundColor: Colors.grey[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(),
            SizedBox(
              height: 200,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _selectedNoteItem != null
                        ? Image.asset(
                            _selectedNoteItem!.showImages,
                            height: 100,
                          )
                        : Container(),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 2,
                      width: 20,
                    ),
                    _selectedNoteItem != null
                        ? Text(
                            _selectedNoteItem!.key.isEmpty
                                ? '-'
                                : _selectedNoteItem!.key,
                          )
                        : const Text('-')
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) => buildNote(
                  item: items[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
