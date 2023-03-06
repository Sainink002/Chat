import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  File? imageFile;
  bool isLoading = false;

  Future getImage() async {
    ImagePicker imagePicker = ImagePicker();
    PickedFile? pickedFile;
    pickedFile = await imagePicker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      if (imageFile != null) {
        setState(() {
          isLoading = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            bottom: 0,
            right: -10,
            child: IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  getImage();
                });
              },
            )),
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(getImage().toString()),
        ),
      ],
    );
  }
}
