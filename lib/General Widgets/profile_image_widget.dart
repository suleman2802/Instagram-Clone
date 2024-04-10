import 'package:flutter/cupertino.dart';

class ProfileImageWidget extends StatelessWidget {
  double size;

  ProfileImageWidget(@required this.size);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          child: Image.network(
            'https://img.freepik.com/free-photo/fresh-autumn-leaves-reveal-vibrant-organic-pattern-generated-by-ai_188544-15037.jpg?size=626&ext=jpg&ga=GA1.1.1224184972.1711843200&semt=ais',
            width: size,
            height: size,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
