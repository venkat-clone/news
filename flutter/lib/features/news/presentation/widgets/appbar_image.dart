import 'package:flutter/material.dart';

class AppBarImage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarImage({super.key, this.src});

  final String? src;

  @override
  Widget build(BuildContext context) {
    return Image.network(src!, fit: BoxFit.cover,height: preferredSize.height,width: double.infinity);
  }

  @override
  Size get preferredSize => const Size(double.infinity, 100);
}
