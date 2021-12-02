# Singanote 
โปรเจคแอพพลิเคชั่น จัดทำโดย พชร ขุนทอง
## Features
* อ่านโน๊ต
* สามารถกดตัวโน๊ตแล้วมีเสียง
* กดแล้วแสดงตัวโน๊ต
* ไมค์โครโฟน
* จูนเนอร์คลื่นความถี่
## Example code 

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
              item.oc,
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

## Credit
ิิ610307030044@dpu.ac.th
## License

























<!-- # flutter_application_singanote

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->
