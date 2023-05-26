import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    required this.image,
    required this.name,
    Key? key,
  }) : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blueGrey,
          backgroundImage: NetworkImage(
            image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Center(
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
